# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "polyamorous/version"

Gem::Specification.new do |s|
  s.name        = "polyamorous"
  s.version     = Polyamorous::VERSION
  s.authors     = ["Ernie Miller"]
  s.email       = ["ernie@metautonomo.us"]
  s.homepage    = "http://github.com/ernie/polyamorous"
  s.summary     = %q{
    Loves/is loved by polymorphic belongs_to associations, Ransack, Squeel, MetaSearch...
  }
  s.description = %q{
    This is just an extraction from Ransack/Squeel. You probably don't want to use this
    directly. It extends ActiveRecord's associations to support polymorphic belongs_to
    associations.
  }

  s.rubyforge_project = "polyamorous"

  s.add_dependency 'activerecord', '>= 3.0'
  s.add_development_dependency 'rspec', '~> 2.14.0'
  s.add_development_dependency 'machinist', '~> 1.0.6'
  s.add_development_dependency 'faker', '~> 0.9.5'
  s.add_development_dependency 'sqlite3', '~> 1.3.3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
