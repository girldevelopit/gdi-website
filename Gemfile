ruby File.read(File.expand_path('../.ruby-version', __FILE__)).chomp

source 'https://rubygems.org'

gem 'rails', '4.1.9'

gem 'pg'
gem 'sass-rails', '~> 4.0'
gem 'uglifier', '>= 1.3'
gem 'coffee-script-source', '1.8.0', platforms: [:mingw, :mswin, :x64_mingw]
gem 'coffee-rails', '~> 4.0'
gem 'jquery-rails'
# gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin.git'
gem 'devise'
gem 'font-awesome-rails'
gem 'bourbon'
gem 'neat'
gem 'cancan'
gem 'rolify'
gem 'momentjs-rails'
gem 'meetup_client'
gem 'underscore-rails'
gem 'rails_autolink'
gem 'video_player'

# for aws cloud storage
gem 'fog'
# photo resizing
gem 'mini_magick'
# file upload solution
gem 'carrierwave'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
gem 'geocoder'
gem 'friendly_id'
# gem 'coveralls', require: false

group :development do
  gem 'pry-byebug'
  gem 'spring'
  gem 'quiet_assets'
  gem 'guard-livereload', require: false
  gem 'guard'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rb-readline'
  # gem 'capistrano-rails'
end

group :test do
  gem 'capybara'
  gem "rspec"
  gem 'rspec-rails'
  gem 'simplecov-rcov'
end

group :production do
  gem 'rails_12factor'
  platforms :ruby do
    gem 'unicorn'
  end
end
