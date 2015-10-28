require "simplecov"
SimpleCov.start

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
require "vcr"
require "webmock"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  fixtures :all

  VCR.configure do |config|
    config.cassette_library_dir = "text/cassettes"
    config.hook_into :webmock
  end

  def stub_omniauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      provider: "twitter",
      info: {
        image: "http://www.imgur.com/rTlcV.jpg"
      },
      extra: {
        raw_info: {
          user_id: 1111,
          name: "Jeff",
          screen_name: "jef",
          location: "Denver, CO",
          description: "Nude dude with a rude 'tude"
        }
      },
      credentials: {
        token: "whatever",
        secret: "whateversecret"
      }
    })
  end
end
