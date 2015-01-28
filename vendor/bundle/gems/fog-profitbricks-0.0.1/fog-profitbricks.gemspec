# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/profitbricks/version'

Gem::Specification.new do |spec|
  spec.name          = "fog-profitbricks"
  spec.version       = Fog::ProfitBricks::VERSION
  spec.authors       = ["Ethan Devenport"]
  spec.email         = ["ethand@stackpointcloud.com"]
  spec.summary       = %q{Module for the 'fog' gem to support ProfitBricks.}
  spec.description   = %q{Module for the 'fog' gem to support ProfitBricks.}
  spec.homepage      = "https://github.com/fog/fog-profitbricks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fog-core"
  spec.add_runtime_dependency "fog-xml"
  spec.add_runtime_dependency "nokogiri"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "shindo"
  spec.add_development_dependency "turn"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rubocop" if RUBY_VERSION >= "1.9.3"
  spec.add_development_dependency "coveralls" if RUBY_VERSION.to_f >= 1.9
end
