# -*- encoding: utf-8 -*-
# stub: carrierwave 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave"
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonas Nicklas"]
  s.date = "2014-02-26"
  s.description = "Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends."
  s.email = ["jonas.nicklas@gmail.com"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/carrierwaveuploader/carrierwave"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main"]
  s.rubyforge_project = "carrierwave"
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby file upload library"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.7"])
      s.add_runtime_dependency(%q<mime-types>, [">= 1.16"])
      s.add_development_dependency(%q<mysql2>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.2.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_development_dependency(%q<sham_rack>, [">= 0"])
      s.add_development_dependency(%q<fog>, [">= 1.3.1"])
      s.add_development_dependency(%q<mini_magick>, [">= 3.6.0"])
      s.add_development_dependency(%q<rmagick>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_development_dependency(%q<timecop>, ["= 0.6.1"])
      s.add_development_dependency(%q<generator_spec>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.2.0"])
      s.add_dependency(%q<activemodel>, [">= 3.2.0"])
      s.add_dependency(%q<json>, [">= 1.7"])
      s.add_dependency(%q<mime-types>, [">= 1.16"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.2.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.3.2"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_dependency(%q<sham_rack>, [">= 0"])
      s.add_dependency(%q<fog>, [">= 1.3.1"])
      s.add_dependency(%q<mini_magick>, [">= 3.6.0"])
      s.add_dependency(%q<rmagick>, [">= 0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_dependency(%q<timecop>, ["= 0.6.1"])
      s.add_dependency(%q<generator_spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.2.0"])
    s.add_dependency(%q<activemodel>, [">= 3.2.0"])
    s.add_dependency(%q<json>, [">= 1.7"])
    s.add_dependency(%q<mime-types>, [">= 1.16"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.2.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.3.2"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    s.add_dependency(%q<sham_rack>, [">= 0"])
    s.add_dependency(%q<fog>, [">= 1.3.1"])
    s.add_dependency(%q<mini_magick>, [">= 3.6.0"])
    s.add_dependency(%q<rmagick>, [">= 0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
    s.add_dependency(%q<timecop>, ["= 0.6.1"])
    s.add_dependency(%q<generator_spec>, [">= 0"])
  end
end
