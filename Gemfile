# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'acts-as-taggable-on'
gem 'activemodel-serializers-xml'
# gem 'active_model_serializers', '~> 0.10.0'
gem 'alchemy_cms'
gem 'alchemy-devise'
gem 'bootsnap', require: false
gem 'coffee-rails'
gem 'dotenv-rails'
gem 'haml-rails'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'sassc-rails'
gem 'thin'
gem 'turbolinks'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # gem 'capistrano-alchemy'
  gem 'capistrano-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'rails_12factor'
  gem 'rack-cache', require: 'rack/cache'
  gem 'dragonfly-s3_data_store'
  gem 'dalli'
  gem 'kgio'
end
