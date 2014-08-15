source 'http://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

#, :staging do
group :production do 
 gem "pg"
end

group :development, :test do
  #gem "sqlite3-ruby", "~> 1.3.0", :require => "sqlite3"
  gem 'sqlite3'
end


gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

# Use SCSS for stylesheets
gem 'coffee-rails', '~> 4.0.0'
gem 'haml-rails'

# Use Uglifier as compressor for JavaScript assets


# Use CoffeeScript for .js.coffee assets and views


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

#jquery support just for using on mercury
gem 'jquery-migrate-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'therubyracer', :platforms => :ruby

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


gem 'mercury-rails', :git=>"https://github.com/jejacks0n/mercury.git"
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#gems for heroku
gem 'rails_12factor', group: :production
