# -*- encoding: utf-8 -*-
# stub: rails_autolink 1.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_autolink"
  s.version = "1.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aaron Patterson", "Juanjo Bazan", "Akira Matsuda"]
  s.date = "2014-06-08"
  s.description = "This is an extraction of the `auto_link` method from rails. The `auto_link` method was removed from Rails in version Rails 3.1. This gem is meant to bridge the gap for people migrating."
  s.email = "aaron@tenderlovemaking.com"
  s.homepage = "https://github.com/tenderlove/rails_autolink"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "Automatic generation of html links in texts"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["> 3.1"])
    else
      s.add_dependency(%q<rails>, ["> 3.1"])
    end
  else
    s.add_dependency(%q<rails>, ["> 3.1"])
  end
end
