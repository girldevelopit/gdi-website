# -*- encoding: utf-8 -*-
# stub: cancan 1.6.10 ruby lib

Gem::Specification.new do |s|
  s.name = "cancan"
  s.version = "1.6.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bates"]
  s.date = "2013-05-07"
  s.description = "Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location."
  s.email = "ryan@railscasts.com"
  s.homepage = "http://github.com/ryanb/cancan"
  s.rubyforge_project = "cancan"
  s.rubygems_version = "2.2.2"
  s.summary = "Simple authorization solution for Rails."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.9"])
      s.add_development_dependency(%q<rr>, ["~> 0.10.11"])
      s.add_development_dependency(%q<supermodel>, ["~> 0.1.4"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<rails>, ["~> 3.0.9"])
      s.add_dependency(%q<rr>, ["~> 0.10.11"])
      s.add_dependency(%q<supermodel>, ["~> 0.1.4"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<rails>, ["~> 3.0.9"])
    s.add_dependency(%q<rr>, ["~> 0.10.11"])
    s.add_dependency(%q<supermodel>, ["~> 0.1.4"])
  end
end
