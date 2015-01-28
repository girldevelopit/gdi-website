# -*- encoding: utf-8 -*-
# stub: friendly_id 5.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "friendly_id"
  s.version = "5.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Norman Clarke", "Philip Arndt"]
  s.date = "2014-05-29"
  s.description = "FriendlyId is the \"Swiss Army bulldozer\" of slugging and permalink plugins for\nActive Record. It lets you create pretty URLs and work with human-friendly\nstrings as if they were numeric ids.\n"
  s.email = ["norman@njclarke.com", "p@arndt.io"]
  s.homepage = "http://github.com/norman/friendly_id"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubyforge_project = "friendly_id"
  s.rubygems_version = "2.2.2"
  s.summary = "A comprehensive slugging and pretty-URL plugin."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 4.0.0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<railties>, ["~> 4.0"])
      s.add_development_dependency(%q<minitest>, [">= 4.4.0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.13.3"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 4.0.0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<railties>, ["~> 4.0"])
      s.add_dependency(%q<minitest>, [">= 4.4.0"])
      s.add_dependency(%q<mocha>, ["~> 0.13.3"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 4.0.0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<railties>, ["~> 4.0"])
    s.add_dependency(%q<minitest>, [">= 4.4.0"])
    s.add_dependency(%q<mocha>, ["~> 0.13.3"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
