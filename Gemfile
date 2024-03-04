source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'datagrid', '~> 1.7'
gem 'devise', '~> 4.9'
gem 'faker', '~> 3.2'
gem 'importmap-rails'
gem 'jbuilder'
gem 'kaminari', '~> 1.2'
gem 'nokogiri', '~> 1.16.2'
gem 'paper_trail', '~> 15.1'
gem 'pg'
gem 'puma', '>= 6.4.2'
gem 'pundit', '~> 2.3'
gem 'rails', '~> 7.1.3'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.3'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'annotate'
  gem 'brakeman'
  gem 'bundler-audit', require: false
  gem 'capybara-email'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rubocop', '~> 1.57'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'htmlbeautifier'
  gem 'rails-erd'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'launchy', '~> 2.5'
  gem 'pundit-matchers', '~> 3.1'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false, group: :test
  gem 'simplecov-cobertura'
end
