require "test_helper"

class UserLogsInWithTwitterTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = Apicurious::Application
    stub_omniauth
  end

  test "logging in" do
    visit "/"
    assert_equal 200, page.status_code
    click_link "Login"
    assert_equal "/", current_path
    assert page.has_content?("jef")
    assert page.has_content?("You are now logged in!")
    assert page.has_link?("Logout")
  end

  test "viewing profile page" do
    visit "/"
    assert_equal 200, page.status_code
    click_link "Login"
    assert_equal "/", current_path
    assert page.has_content?("Jeff")
    assert page.has_content?("jef")
    assert page.has_content?("Denver")
    assert page.has_content?("Nude dude with a rude 'tude")
    assert page.has_link?("Logout")
  end
end
