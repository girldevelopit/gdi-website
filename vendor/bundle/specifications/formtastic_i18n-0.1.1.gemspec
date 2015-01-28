# -*- encoding: utf-8 -*-
# stub: formtastic_i18n 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "formtastic_i18n"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Timo Schilling"]
  s.date = "2014-09-24"
  s.email = ["timo@schilling.io"]
  s.homepage = "https://github.com/timoschilling/formtastic_i18n"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "I18n translation for the formtastic gem"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
