# -*- encoding: utf-8 -*-
# stub: fog-softlayer 0.3.24 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-softlayer"
  s.version = "0.3.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matt Eldridge"]
  s.date = "2014-07-16"
  s.description = "Module for the 'fog' gem to support SoftLayer Cloud"
  s.email = ["matt.eldridge@us.ibm.com"]
  s.homepage = "https://github.com/fog/fog-softlayer"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "This library can be used as a module for `fog` or as standalone provider to use the SoftLayer Cloud in applications"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, [">= 0"])
      s.add_runtime_dependency(%q<fog-json>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rbvmomi>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<rbovirt>, ["= 0.0.24"])
      s.add_development_dependency(%q<shindo>, ["~> 0.3.4"])
      s.add_development_dependency(%q<fission>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<osrcry>, [">= 0"])
    else
      s.add_dependency(%q<fog-core>, [">= 0"])
      s.add_dependency(%q<fog-json>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rbvmomi>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<rbovirt>, ["= 0.0.24"])
      s.add_dependency(%q<shindo>, ["~> 0.3.4"])
      s.add_dependency(%q<fission>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<osrcry>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>, [">= 0"])
    s.add_dependency(%q<fog-json>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rbvmomi>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<rbovirt>, ["= 0.0.24"])
    s.add_dependency(%q<shindo>, ["~> 0.3.4"])
    s.add_dependency(%q<fission>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<osrcry>, [">= 0"])
  end
end
