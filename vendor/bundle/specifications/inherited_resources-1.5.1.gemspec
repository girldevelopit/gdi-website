# -*- encoding: utf-8 -*-
# stub: inherited_resources 1.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "inherited_resources"
  s.version = "1.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jos\u{e9} Valim", "Joel Moss"]
  s.date = "2014-10-29"
  s.description = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."
  s.homepage = "http://github.com/josevalim/inherited_resources"
  s.licenses = ["MIT"]
  s.rubyforge_project = "inherited_resources"
  s.rubygems_version = "2.2.2"
  s.summary = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<responders>, ["~> 1.0"])
      s.add_runtime_dependency(%q<actionpack>, ["< 4.2", ">= 3.2"])
      s.add_runtime_dependency(%q<railties>, ["< 4.2", ">= 3.2"])
      s.add_runtime_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
    else
      s.add_dependency(%q<responders>, ["~> 1.0"])
      s.add_dependency(%q<actionpack>, ["< 4.2", ">= 3.2"])
      s.add_dependency(%q<railties>, ["< 4.2", ">= 3.2"])
      s.add_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
    end
  else
    s.add_dependency(%q<responders>, ["~> 1.0"])
    s.add_dependency(%q<actionpack>, ["< 4.2", ">= 3.2"])
    s.add_dependency(%q<railties>, ["< 4.2", ">= 3.2"])
    s.add_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
  end
end
