# -*- encoding: utf-8 -*-
# stub: actionpack 4.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "actionpack"
  s.version = "4.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2014-07-02"
  s.description = "Web apps on Rails. Simple, battle-tested conventions for building and testing MVC web applications. Works with any Rack-compatible server."
  s.email = "david@loudthinking.com"
  s.homepage = "http://www.rubyonrails.org"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.2.2"
  s.summary = "Web-flow and rendering framework putting the VC in MVC (part of Rails)."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 4.1.4"])
      s.add_runtime_dependency(%q<rack>, ["~> 1.5.2"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_runtime_dependency(%q<actionview>, ["= 4.1.4"])
      s.add_development_dependency(%q<activemodel>, ["= 4.1.4"])
    else
      s.add_dependency(%q<activesupport>, ["= 4.1.4"])
      s.add_dependency(%q<rack>, ["~> 1.5.2"])
      s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_dependency(%q<actionview>, ["= 4.1.4"])
      s.add_dependency(%q<activemodel>, ["= 4.1.4"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 4.1.4"])
    s.add_dependency(%q<rack>, ["~> 1.5.2"])
    s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
    s.add_dependency(%q<actionview>, ["= 4.1.4"])
    s.add_dependency(%q<activemodel>, ["= 4.1.4"])
  end
end
