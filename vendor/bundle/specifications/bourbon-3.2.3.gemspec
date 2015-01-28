# -*- encoding: utf-8 -*-
# stub: bourbon 3.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "bourbon"
  s.version = "3.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Phil LaPier", "Chad Mazzola", "Matt Jankowski", "Nick Quaranto", "Jeremy Raines", "Mike Burns", "Andres Mejia", "Travis Haynes", "Chris Lloyd", "Gabe Berke-Williams", "J. Edward Dewyea", "Reda Lemeden", "Kyle Fiedler"]
  s.date = "2014-05-21"
  s.description = "Bourbon provides a comprehensive framework of\nsass mixins that are designed to be as vanilla as possible. Meaning they\nshould not deter from the original CSS syntax. The mixins contain vendor\nspecific prefixes for all CSS3 properties for support amongst modern\nbrowsers. The prefixes also ensure graceful degradation for older browsers\nthat support only CSS3 prefixed properties.\n"
  s.email = ["support@thoughtbot.com"]
  s.executables = ["bourbon"]
  s.files = ["bin/bourbon"]
  s.homepage = "https://github.com/thoughtbot/bourbon"
  s.licenses = ["MIT"]
  s.rubyforge_project = "bourbon"
  s.rubygems_version = "2.2.2"
  s.summary = "Bourbon Sass Mixins using SCSS syntax."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>, ["~> 3.2"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<aruba>, ["~> 0.4"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<sass>, ["~> 3.2"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<aruba>, ["~> 0.4"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<sass>, ["~> 3.2"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<aruba>, ["~> 0.4"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
