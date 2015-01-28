# -*- encoding: utf-8 -*-
# stub: columnize 0.8.9 ruby lib

Gem::Specification.new do |s|
  s.name = "columnize"
  s.version = "0.8.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rocky Bernstein"]
  s.date = "2014-04-19"
  s.description = "\nIn showing a long lists, sometimes one would prefer to see the value\narranged aligned in columns. Some examples include listing methods\nof an object or debugger commands.\nSee Examples in the rdoc documentation for examples.\n"
  s.email = "rockyb@rubyforge.net"
  s.extra_rdoc_files = ["README.md", "lib/columnize.rb", "COPYING", "THANKS"]
  s.files = ["COPYING", "README.md", "THANKS", "lib/columnize.rb"]
  s.homepage = "https://github.com/rocky/columnize"
  s.licenses = ["Ruby", "GPL2"]
  s.rdoc_options = ["--main", "README", "--title", "Columnize 0.8.9 Documentation"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2")
  s.rubyforge_project = "columnize"
  s.rubygems_version = "2.2.2"
  s.summary = "Module to format an Array as an Array of String aligned in columns"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
