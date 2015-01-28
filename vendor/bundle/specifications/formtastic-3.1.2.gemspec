# -*- encoding: utf-8 -*-
# stub: formtastic 3.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "formtastic"
  s.version = "3.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin French"]
  s.date = "2014-11-24"
  s.description = "A Rails form builder plugin/gem with semantically rich and accessible markup"
  s.email = ["justin@indent.com.au"]
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile"]
  s.homepage = "http://github.com/justinfrench/formtastic"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "A Rails form builder plugin/gem with semantically rich and accessible markup"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, [">= 3.2.13"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<rspec_tag_matchers>, ["~> 1.0"])
      s.add_development_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_development_dependency(%q<RedCloth>, ["~> 4.2"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<colored>, ["~> 1.2"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<ammeter>, ["= 1.1.1"])
      s.add_development_dependency(%q<appraisal>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<activemodel>, [">= 3.2.13"])
    else
      s.add_dependency(%q<actionpack>, [">= 3.2.13"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<rspec_tag_matchers>, ["~> 1.0"])
      s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_dependency(%q<RedCloth>, ["~> 4.2"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<colored>, ["~> 1.2"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<ammeter>, ["= 1.1.1"])
      s.add_dependency(%q<appraisal>, ["~> 1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 3.2.13"])
    end
  else
    s.add_dependency(%q<actionpack>, [">= 3.2.13"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<rspec_tag_matchers>, ["~> 1.0"])
    s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
    s.add_dependency(%q<RedCloth>, ["~> 4.2"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<colored>, ["~> 1.2"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<ammeter>, ["= 1.1.1"])
    s.add_dependency(%q<appraisal>, ["~> 1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 3.2.13"])
  end
end
