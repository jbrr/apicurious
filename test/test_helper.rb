ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  def stub_omniauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      provider: "twitter",
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
