# -*- encoding: utf-8 -*-
# stub: orm_adapter 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "orm_adapter"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ian White", "Jose Valim"]
  s.date = "2013-11-12"
  s.description = "Provides a single point of entry for using basic features of ruby ORMs"
  s.email = "ian.w.white@gmail.com"
  s.homepage = "http://github.com/ianwhite/orm_adapter"
  s.licenses = ["MIT"]
  s.rubyforge_project = "orm_adapter"
  s.rubygems_version = "2.2.2"
  s.summary = "orm_adapter provides a single point of entry for using basic features of popular ruby ORMs.  Its target audience is gem authors who want to support many ruby ORMs."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<git>, [">= 1.2.5"])
      s.add_development_dependency(%q<yard>, [">= 0.6.0"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<activerecord>, [">= 3.2.15"])
      s.add_development_dependency(%q<mongoid>, ["~> 2.8.0"])
      s.add_development_dependency(%q<mongo_mapper>, ["~> 0.11.0"])
      s.add_development_dependency(%q<bson_ext>, [">= 1.3.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.4.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 1.3.2"])
      s.add_development_dependency(%q<datamapper>, [">= 1.0"])
      s.add_development_dependency(%q<dm-sqlite-adapter>, [">= 1.0"])
      s.add_development_dependency(%q<dm-active_model>, [">= 1.0"])
    else
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<git>, [">= 1.2.5"])
      s.add_dependency(%q<yard>, [">= 0.6.0"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<activerecord>, [">= 3.2.15"])
      s.add_dependency(%q<mongoid>, ["~> 2.8.0"])
      s.add_dependency(%q<mongo_mapper>, ["~> 0.11.0"])
      s.add_dependency(%q<bson_ext>, [">= 1.3.0"])
      s.add_dependency(%q<rspec>, [">= 2.4.0"])
      s.add_dependency(%q<sqlite3>, [">= 1.3.2"])
      s.add_dependency(%q<datamapper>, [">= 1.0"])
      s.add_dependency(%q<dm-sqlite-adapter>, [">= 1.0"])
      s.add_dependency(%q<dm-active_model>, [">= 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<git>, [">= 1.2.5"])
    s.add_dependency(%q<yard>, [">= 0.6.0"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<activerecord>, [">= 3.2.15"])
    s.add_dependency(%q<mongoid>, ["~> 2.8.0"])
    s.add_dependency(%q<mongo_mapper>, ["~> 0.11.0"])
    s.add_dependency(%q<bson_ext>, [">= 1.3.0"])
    s.add_dependency(%q<rspec>, [">= 2.4.0"])
    s.add_dependency(%q<sqlite3>, [">= 1.3.2"])
    s.add_dependency(%q<datamapper>, [">= 1.0"])
    s.add_dependency(%q<dm-sqlite-adapter>, [">= 1.0"])
    s.add_dependency(%q<dm-active_model>, [">= 1.0"])
  end
end
