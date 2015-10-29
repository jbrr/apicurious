require "test_helper"

class UserSeesTimelineTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = Apicurious::Application
    stub_omniauth
  end

  test "sees timeline" do
    VCR.use_cassette("user feature test") do
      visit "/"
      click_link "Login"
      assert page.has_content?("one more test")
    end
  end
end
