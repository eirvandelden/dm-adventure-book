source "https://gem.coop"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

gem 'acts-as-taggable-on'
gem 'activemodel-serializers-xml'
gem 'alchemy_cms', '~> 8.3'
gem 'alchemy-devise', '~> 8.3'
gem 'bootsnap', require: false
gem 'dotenv-rails'
gem 'haml-rails'
gem 'importmap-rails'
# json 3.x changed JSON.parse's signature to keyword-only, breaking activesupport 8.1.3.1
gem 'json', '< 3'
gem 'mini_magick'
gem 'propshaft'
gem 'puma', '~> 6.0'
gem 'rails', '~> 8.1.3'
gem 'rexml'
gem 'sqlite3'
gem 'turbo-rails'

group :development, :test do
  gem "debug", "> 1"
end

group :development do
  # gem 'capistrano-alchemy'
  gem 'capistrano-rails'
  gem 'listen'
  gem 'web-console'
end

group :production do
  gem 'rack-cache', require: 'rack/cache'
  gem 'dragonfly-s3_data_store'
  gem 'dalli'
end
