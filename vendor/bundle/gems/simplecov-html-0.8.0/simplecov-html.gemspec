# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'simplecov-html/version'

Gem::Specification.new do |s|
  s.name        = "simplecov-html"
  s.version     = SimpleCov::Formatter::HTMLFormatter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christoph Olszowka"]
  s.email       = ["christoph at olszowka de"]
  s.homepage    = "https://github.com/colszowka/simplecov-html"
  s.summary     = %Q{Default HTML formatter for SimpleCov code coverage tool for ruby 1.9+}
  s.description = %Q{Default HTML formatter for SimpleCov code coverage tool for ruby 1.9+}

  s.rubyforge_project = "simplecov-html"
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'sprockets'
  s.add_development_dependency 'sass'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end