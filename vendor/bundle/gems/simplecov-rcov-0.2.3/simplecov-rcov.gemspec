# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'simplecov-rcov/version'

Gem::Specification.new do |s|
  s.name        = %q{simplecov-rcov}
  s.version     = SimpleCov::Formatter::RcovFormatter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fernando Guillen http://fernandoguillen.info", "Wes Morgan http://github.com/cap10morgan", "Wandenberg Peixoto http://github.com/wandenberg"]
  s.email       = ["fguillen.mail@gmail.com", "cap10morgan@gmail.com"]
  s.homepage    = %q{http://github.com/fguillen/simplecov-rcov}
  s.summary     = %q{Rcov style formatter for SimpleCov}
  s.description = %q{Rcov style formatter for SimpleCov}
  s.date        = %q{2011-02-10}

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.extra_rdoc_files = ["README.md", "lib/simplecov-rcov.rb"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Simplecov-rcov", "--main", "README.md"]
  s.rubyforge_project = %q{simplecov-rcov}
  s.rubygems_version = %q{1.3.7}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'simplecov', '>= 0.4.1'
  
  s.add_development_dependency 'bundler', '>= 1.0.0.rc.6'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
end
