source 'https://rubygems.org'
ruby '2.0.0'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'

# Use Thin for our web server
gem 'thin'

gem 'activesupport'
gem 'activerecord'

gem 'rake', '10.3.1'

gem 'shotgun'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
end

group :test, :development do
  gem 'rspec'
  gem 'factory_girl'
  gem 'faker'
  gem 'database_cleaner'
  gem 'simplecov', '~> 0.7.1'
end
