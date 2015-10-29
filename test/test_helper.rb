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
    config.cassette_library_dir = "test/cassettes"
    config.hook_into :webmock
  end

  def stub_omniauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      info: {
        uid: 4050283094,
        image: "http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png"
      },
      extra: {
        raw_info: {
          name: "jr",
          screen_name: "jbrapitest",
          location: "Denver, CO",
          description: "test dummy"
        }
      },
      credentials: {
        token: "4050283094-g8BQ0D7aullHSRGZRwVsmG9ZHsc1Vxw8HbDXTzl",
        secret: "LbiWkq6KcHIpScGXpPz5AppnJzEWDwThFwTRAHP6W67sB"
      }
    })
  end
end
