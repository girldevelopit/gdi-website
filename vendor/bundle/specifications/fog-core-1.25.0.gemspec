# -*- encoding: utf-8 -*-
# stub: fog-core 1.25.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-core"
  s.version = "1.25.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Evan Light", "Wesley Beary"]
  s.date = "2014-11-18"
  s.description = "Shared classes and tests for fog providers and services."
  s.email = ["evan@tripledogdare.net", "geemus@gmail.com"]
  s.homepage = "https://github.com/fog/fog-core"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Shared classes and tests for fog providers and services."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<excon>, ["~> 0.38"])
      s.add_runtime_dependency(%q<formatador>, ["~> 0.2"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<net-scp>, ["~> 1.1"])
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<minitest-stub-const>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<excon>, ["~> 0.38"])
      s.add_dependency(%q<formatador>, ["~> 0.2"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<net-scp>, ["~> 1.1"])
      s.add_dependency(%q<net-ssh>, [">= 2.1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<minitest-stub-const>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<excon>, ["~> 0.38"])
    s.add_dependency(%q<formatador>, ["~> 0.2"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<net-scp>, ["~> 1.1"])
    s.add_dependency(%q<net-ssh>, [">= 2.1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<minitest-stub-const>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end
