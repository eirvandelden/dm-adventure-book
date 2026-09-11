source "https://gem.coop"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

gem "acts-as-taggable-on"
gem "activemodel-serializers-xml"
gem "alchemy_cms", "~> 8.3"
gem "alchemy-devise", "~> 8.3"
gem "bootsnap", require: false
gem "dotenv-rails"
gem "haml-rails"
gem "importmap-rails"
# json 3.x changed JSON.parse's signature to keyword-only, breaking activesupport 8.1.3.1
gem "json", "< 3"
gem "mini_magick"
gem "propshaft"
gem "puma", ">= 8.0.2"
gem "rails", "~> 8.1"
gem "rexml"
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "sqlite3"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "debug", "> 1"
end

group :development do
  # gem 'capistrano-alchemy'
  gem "capistrano-rails"
  gem "lefthook", require: false
  gem "listen"
  gem "rubocop-capybara", require: false
  gem "rubocop-eirvandelden", github: "eirvandelden/rubocop-eirvandelden", require: false
  gem "web-console"
end
