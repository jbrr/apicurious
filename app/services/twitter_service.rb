class TwitterService
  attr_reader :client

  def initialize
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_client"]
      config.consumer_secret     = ENV["twitter_secret"]
      config.access_token        = ENV["twitter_token"]
      config.access_token_secret = ENV["twitter_token_secret"]
    end
  end
end
