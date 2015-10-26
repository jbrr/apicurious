source 'https://rubygems.org'
ruby "2.2.3"

gem "rails", "4.2.4"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "sdoc", "~> 0.4.0", group: :doc
gem "pry-rails"
gem "figaro"
gem "unicorn"
gem "bootstrap-sass"
gem "twitter"
gem "omniauth-twitter"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :production do
  gem "rails_12factor"
end

group :development, :test do
  gem "byebug"
  gem "capybara"
  gem "pry", require: "pry"
  gem "better_errors"
  gem "binding_of_caller"
  gem "launchy"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 2.0"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
end
