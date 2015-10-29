require "test_helper"

class UserLogsOutTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = Apicurious::Application
    stub_omniauth
  end

  test "user logs out" do
    VCR.use_cassette("user feature test") do
      visit "/"
      click_link "Login"
      assert page.has_content?("jbrapitest")
      click_link "Logout"
      assert_equal "/", current_path
      assert page.has_link?("Login")
    end
  end
end
