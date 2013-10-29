TWITTER_CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key = "F1EbO7iQzBCtumPIWGxRLQ"
  config.consumer_secret = "9kGmSk6rIEffNauBE9rYEpHvzSBzIgd34AbFRvKtuo"
  config.access_token = "16355050-NjTXfjcrZ32BWsVxekvW11K4ch2ETsGh0acXZS5Na"
  config.access_token_secret = "fUmojD81aCuahbb2Cm3aWIprJzwHydbp9pkRL5OzwfLBf"

  config.connection_options[:request] = {:open_timeout=>10, :timeout=>20}
end
