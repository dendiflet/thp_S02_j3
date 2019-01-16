require 'twitter'
  require 'dotenv'

  Dotenv.load

#a coller pour faire du irb a partir de  la !
#binding.pry

def login_twitter
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]				# ce sont les
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]			# quatres ligne
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]				# de connection
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]		# a tweeter
	  end
  return Client
end

puts Client

#binding.pry



# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!!')














