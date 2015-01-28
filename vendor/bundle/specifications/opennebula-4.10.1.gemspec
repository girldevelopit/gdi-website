# -*- encoding: utf-8 -*-
# stub: opennebula 4.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "opennebula"
  s.version = "4.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["OpenNebula"]
  s.date = "2014-11-20"
  s.description = "Libraries needed to talk to OpenNebula"
  s.email = "contact@opennebula.org"
  s.homepage = "http://opennebula.org"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "OpenNebula Client API"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<rbvmomi>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rbvmomi>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rbvmomi>, [">= 0"])
  end
end
