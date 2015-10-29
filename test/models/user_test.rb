require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "jr",
                        screen_name: "jbrapitest",
                        uid: "4050283094",
                        oauth_token: "4050283094-g8BQ0D7aullHSRGZRwVsmG9ZHsc1Vxw8HbDXTzl",
                        oauth_secret_token: "LbiWkq6KcHIpScGXpPz5AppnJzEWDwThFwTRAHP6W67sB",
                        image: "http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png",
                        location: "Denver, CO",
                        description: "test dummy")
    @service = TwitterService.new(@user)
  end

  test "#friends_count" do
    VCR.use_cassette("user test") do
      assert_equal 0, @user.friends_count
    end
  end

  test "#followers_count" do
    VCR.use_cassette("user test") do
      assert_equal 0, @user.followers_count
    end
  end

  test "#tweet_count" do
    VCR.use_cassette("user test") do
      assert_equal 2, @user.tweet_count
    end
  end
end
