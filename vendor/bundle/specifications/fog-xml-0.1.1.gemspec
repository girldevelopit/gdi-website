# -*- encoding: utf-8 -*-
# stub: fog-xml 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-xml"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Wesley Beary (geemus)", "Paul Thornthwaite (tokengeek)", "The fog team"]
  s.date = "2014-11-06"
  s.description = "Extraction of the XML parsing tools shared between a\n                          number of providers in the 'fog' gem"
  s.email = ["geemus@gmail.com", "tokengeek@gmail.com"]
  s.homepage = "https://github.com/fog/fog-xml"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "XML parsing for fog providers"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<turn>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<fog-core>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<turn>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<turn>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end
