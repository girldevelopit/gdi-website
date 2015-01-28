# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'formtastic_i18n/version'

Gem::Specification.new do |spec|
  spec.name          = "formtastic_i18n"
  spec.version       = FormtasticI18n::VERSION
  spec.authors       = ["Timo Schilling"]
  spec.email         = ["timo@schilling.io"]
  spec.summary       = "I18n translation for the formtastic gem"
  spec.homepage      = "https://github.com/timoschilling/formtastic_i18n"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
