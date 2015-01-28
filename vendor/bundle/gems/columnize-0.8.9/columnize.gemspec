# -*- Ruby -*-
# -*- encoding: utf-8 -*-
require 'rake'
require 'rubygems' unless
  Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/columnize/version" unless
  Object.const_defined?(:'Columnize')

Gem::Specification.new do |spec|
  spec.authors      = ['Rocky Bernstein']
  spec.date         = Time.now
  spec.description  = '
In showing a long lists, sometimes one would prefer to see the value
arranged aligned in columns. Some examples include listing methods
of an object or debugger commands.
See Examples in the rdoc documentation for examples.
'
  spec.email        = 'rockyb@rubyforge.net'
  spec.files        = `git ls-files`.split("\n")
  spec.homepage     = 'https://github.com/rocky/columnize'
  spec.name         = 'columnize'
  spec.licenses     = ['Ruby', 'GPL2']
  spec.platform     = Gem::Platform::RUBY
  spec.require_path = 'lib'
  spec.required_ruby_version = '>= 1.8.2'
  spec.rubyforge_project = 'columnize'
  spec.summary      = 'Module to format an Array as an Array of String aligned in columns'
  spec.version      = Columnize::VERSION
  spec.has_rdoc     = true
  spec.extra_rdoc_files = %w(README.md lib/columnize.rb COPYING THANKS)

  # Make the readme file the start page for the generated html
  spec.rdoc_options += %w(--main README)
  spec.rdoc_options += ['--title', "Columnize #{Columnize::VERSION} Documentation"]

  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'rake'
end
