require "test_helper"

class UserFavoritesATweet < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = Apicurious::Application
    stub_omniauth
  end

  test "favorites a tweet" do
    VCR.use_cassette("user feature test") do
      visit "/"
      click_link "Login"
      first(".mdi-inverse").click_on("Grade")
    end
  end
end
