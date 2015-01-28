# -*- encoding: utf-8 -*-
# stub: simplecov 0.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simplecov"
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Christoph Olszowka"]
  s.date = "2014-09-21"
  s.description = "Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites"
  s.email = ["christoph at olszowka de"]
  s.homepage = "http://github.com/colszowka/simplecov"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<simplecov-html>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<docile>, ["~> 1.1.0"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<simplecov-html>, ["~> 0.8.0"])
      s.add_dependency(%q<docile>, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<simplecov-html>, ["~> 0.8.0"])
    s.add_dependency(%q<docile>, ["~> 1.1.0"])
  end
end
