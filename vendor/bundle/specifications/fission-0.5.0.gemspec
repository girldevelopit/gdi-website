# -*- encoding: utf-8 -*-
# stub: fission 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fission"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tommy Bishop"]
  s.date = "2013-10-05"
  s.description = "A simple utility to manage VMware Fusion VMs from the command line"
  s.email = ["bishop.thomas@gmail.com"]
  s.executables = ["fission"]
  s.files = ["bin/fission"]
  s.homepage = "https://github.com/thbishop/fission"
  s.rubyforge_project = "fission"
  s.rubygems_version = "2.2.2"
  s.summary = "Command line tool to manage VMware Fusion VMs"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<CFPropertyList>, ["~> 2.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.4.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
    else
      s.add_dependency(%q<CFPropertyList>, ["~> 2.2"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<fakefs>, ["~> 0.4.3"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
    end
  else
    s.add_dependency(%q<CFPropertyList>, ["~> 2.2"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<fakefs>, ["~> 0.4.3"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
  end
end
