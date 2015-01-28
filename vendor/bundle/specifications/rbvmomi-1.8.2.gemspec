# -*- encoding: utf-8 -*-
# stub: rbvmomi 1.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rbvmomi"
  s.version = "1.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rich Lane", "Christian Dickmann"]
  s.date = "2014-10-01"
  s.email = "rlane@vmware.com"
  s.executables = ["rbvmomish"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc", "bin/rbvmomish"]
  s.homepage = "https://github.com/vmware/rbvmomi"
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby interface to the VMware vSphere API"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.1"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<trollop>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<trollop>, [">= 0"])
  end
end
