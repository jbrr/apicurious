require "test_helper"

class UserPostsATweetTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = Apicurious::Application
    stub_omniauth
  end

  test "posting a tweet" do
    VCR.use_cassette("posting a tweet") do
      visit "/"
      click_link "Login"
      fill_in("tweet", with: "practice tweet")
      click_on "Submit"
      assert page.has_content?("practice tweet")
    end
  end
end
