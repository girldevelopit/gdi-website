# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'meetup_client'
  s.date        = '2013-07-25'
  s.summary     = "Easy way to access the Meetup.com API"
  s.description = "Easy way to access the Meetup.com API"
  s.authors     = ["Cosimo Ranieri"]
  s.email       = 'co.ranieri@gmail.com'
  s.files       = %w(README.md Rakefile meetup_client.gemspec)
  s.files      += Dir.glob("lib/**/*.rb")
  s.files      += Dir.glob("spec/**/*")
  s.version     = '0.0.6'
  s.homepage    = 'https://rubygems.org/gems/meetup_client' 
  s.license     = 'MIT'
end
