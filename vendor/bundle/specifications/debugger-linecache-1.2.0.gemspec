# -*- encoding: utf-8 -*-
# stub: debugger-linecache 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "debugger-linecache"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["R. Bernstein", "Mark Moseley", "Gabriel Horner"]
  s.date = "2013-03-11"
  s.description = "Linecache is a module for reading and caching lines. This may be useful for\nexample in a debugger where the same lines are shown many times.\n"
  s.email = "gabriel.horner@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/cldwalker/debugger-linecache"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Read file with caching"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
    else
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
  end
end
