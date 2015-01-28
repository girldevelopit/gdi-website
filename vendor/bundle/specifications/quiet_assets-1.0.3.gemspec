# -*- encoding: utf-8 -*-
# stub: quiet_assets 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "quiet_assets"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dmitry Karpunin", "Dmitry Vorotilin"]
  s.date = "2014-06-19"
  s.description = "Quiet Assets turns off Rails asset pipeline log."
  s.email = ["koderfunk@gmail.com", "d.vorotilin@gmail.com"]
  s.homepage = "http://github.com/evrone/quiet_assets"
  s.licenses = ["MIT", "GPL"]
  s.rubygems_version = "2.2.2"
  s.summary = "Turns off Rails asset pipeline log."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5.0", ">= 3.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["< 5.0", ">= 3.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5.0", ">= 3.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
  end
end
