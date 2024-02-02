# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'bundler', '~> 2.5.4'
gem 'foreman', '~> 0.87.2'
gem 'rails', '~> 7.1.3'
gem 'rails-i18n'

# admin
gem 'cancancan'
gem 'devise'
gem 'responders', '~> 3.1.1'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'dartsass-rails', '~> 0.5.0'
gem 'html2slim', github: 'slim-template/html2slim'
gem 'propshaft'
gem 'slim-rails', '~> 3.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'importmap-rails'
gem 'jquery-rails'
gem 'popper_js', '~> 2.11.8'

# active Storage
# gem 'ruby-vips', '~> 2.1', '>= 2.1.4'
# gem 'ffmpeg'
# gem 'shared-mime-info', '~> 0.2.5'
# gem 'poppler', '~> 4.2'
# gem 'gobject-introspection', '~> 4.2'
gem 'cairo-gobject', '~> 4.2'
gem 'ddtrace', '~> 1.0'
gem 'gio2', '~> 4.2'
gem 'google-protobuf', '~> 3.0'
gem 'mini_magick', '~> 4.8'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'mini_racer', '~> 0.8.0'
gem 'requestjs-rails'
gem 'turbo-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]

# debugging
gem 'minitest', '~> 5.21', '>= 5.21.2'
gem 'rubocop-minitest', require: false
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# bootstrap
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.12', '>= 1.12.2'
group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'htmlbeautifier'
  gem 'rails_best_practices'
  gem 'rubocop', require: false
  gem 'rubocop-hc', require: false, github: 'ihatov08/rubocop-hc'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver', '~> 4.14'
  gem 'webdrivers'
end
