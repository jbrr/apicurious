source 'https://rubygems.org'
ruby "2.2.3"

gem "rails", "4.2.4"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "sdoc", "~> 0.4.0", group: :doc
gem "pry-rails"
gem "figaro"
gem "unicorn"
gem "bootstrap-sass"
gem "materialize-sass"
gem "twitter"
gem "omniauth-twitter"

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
  gem "web-console", "~> 2.0"
  gem "spring"
end

group :test do
  gem "simplecov", require: false
  gem "minitest-reporters"
  gem "vcr"
  gem "webmock"
end
