source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'rake'

# database
gem 'pg'
gem "seedbank"

# models
gem 'friendly_id'
gem 'active_model_serializers'
gem 'activevalidators'
gem 'activemodel-warnings'

# views
gem 'tophat'
gem 'simple_form'

# authentication
gem 'devise'
gem 'cancan'

# queues/automation
gem 'sidekiq'
gem 'whenever'

# misc
gem 'lograge'

# monitoring
gem 'newrelic_rpm'

# assets
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'brakeman'
  gem 'vendorer'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'dotenv'
  gem 'konacha'
  gem 'guard-sidekiq'
end

group :test do
  # cucumber
  gem 'cucumber-rails', :require => false
  gem 'capybara-puma'
  gem 'capybara-email'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'launchy'

  # guards
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-puma'
  gem 'guard-spin'
  gem "guard-bundler"
  gem 'guard-konacha'
  gem 'rb-fsevent'
  gem 'growl'

  # factories/data
  gem 'factory_girl_rails'
  gem 'factory_girl'
  gem 'shoulda'
  gem 'forgery'
  gem 'timecop'

  gem 'simplecov', :require => false
end
