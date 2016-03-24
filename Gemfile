source 'https://rubygems.org'

# # Use mysql2 version '0.3.18', newer versions have some bugs
# gem "mysql2", "~> 0.3.18"

gem 'rspec-rails', '~> 3.0', group: [:test, :development]
gem 'spring-commands-rspec', group: [:test, :development]
gem 'shoulda-matchers', '~> 3.0', group: [:test, :development]
gem 'cucumber-rails', :require => false, group: [:test, :development]
gem 'spring-commands-cucumber', group: [:test, :development]
gem 'database_cleaner', group: [:test, :development]
gem 'rubocop', require: false, group: [:test, :development]
gem 'spring-commands-rubocop', group: [:test, :development]
gem 'guard-rspec', group: [:test, :development]
gem 'guard-rubocop', group: [:test, :development]
gem 'guard-cucumber', group: [:test, :development]
gem 'factory_girl_rails', group: [:test, :development]
gem 'devise'
gem 'bootstrap', '~> 4.0.0.alpha3'
# To use bootstrap tooltips and popovers you need tether, just uncomment next lines
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
gem 'dotenv-rails', :groups => [:development, :test]
gem 'simplecov', :require => false, :group => :test
gem 'puma'
gem 'pry-rails', :groups => [:development, :test]
gem 'quiet_assets', group: :development


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

