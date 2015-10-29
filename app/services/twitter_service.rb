class TwitterService
  attr_reader :client, :user

  def initialize(user)
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_client"]
      config.consumer_secret     = ENV["twitter_secret"]
      config.access_token        = user.oauth_token
      config.access_token_secret = user.oauth_secret_token
    end
  end
end
