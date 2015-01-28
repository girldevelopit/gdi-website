# -*- encoding: utf-8 -*-
# stub: has_scope 0.6.0.rc ruby lib

Gem::Specification.new do |s|
  s.name = "has_scope"
  s.version = "0.6.0.rc"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jos\u{e9} Valim"]
  s.date = "2013-05-09"
  s.description = "Maps controller filters to your resource scopes"
  s.email = "developers@plataformatec.com.br"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/plataformatec/has_scope"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubyforge_project = "has_scope"
  s.rubygems_version = "2.2.2"
  s.summary = "Maps controller filters to your resource scopes."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
      s.add_runtime_dependency(%q<activesupport>, ["< 5", ">= 3.2"])
    else
      s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
      s.add_dependency(%q<activesupport>, ["< 5", ">= 3.2"])
    end
  else
    s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
    s.add_dependency(%q<activesupport>, ["< 5", ">= 3.2"])
  end
end
