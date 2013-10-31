TWITTER_CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key = "F1EbO7iQzBCtumPIWGxRLQ"
  config.consumer_secret = "9kGmSk6rIEffNauBE9rYEpHvzSBzIgd34AbFRvKtuo"

  config.connection_options[:request] = {:open_timeout=>10, :timeout=>20}
end
