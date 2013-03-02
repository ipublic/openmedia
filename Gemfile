source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  
  gem 'jquery-ui-rails'
  gem 'chosen-rails'
  
  gem "less-rails", ">= 2.2.6", :group => :assets
  gem "twitter-bootstrap-rails", ">= 2.1.8", :group => :assets
  gem 'turbo-sprockets-rails3'
end

gem 'jquery-rails'

gem "mongoid", ">=3.0.4"
gem "devise", ">= 2.1.2"
gem "simple_form", ">= 2.0.4"


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'debugger'

gem "rspec-rails", ">= 2.11.4", :group => [:development, :test]
gem "email_spec", ">= 1.4.0", :group => :test

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem "mailcatcher"
end
