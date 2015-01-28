# -*- encoding: utf-8 -*-
# stub: simplecov-html 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "simplecov-html"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Christoph Olszowka"]
  s.date = "2013-11-10"
  s.description = "Default HTML formatter for SimpleCov code coverage tool for ruby 1.9+"
  s.email = ["christoph at olszowka de"]
  s.homepage = "https://github.com/colszowka/simplecov-html"
  s.rubyforge_project = "simplecov-html"
  s.rubygems_version = "2.2.2"
  s.summary = "Default HTML formatter for SimpleCov code coverage tool for ruby 1.9+"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sprockets>, [">= 0"])
      s.add_development_dependency(%q<sass>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sprockets>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sprockets>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 0"])
  end
end
