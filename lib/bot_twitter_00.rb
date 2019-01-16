require 'twitter'
  require 'dotenv'

puts "\e[H\e[2J"

  Dotenv.load

def login_twitter

#puts ENV															#fonctionne pas sa mere !
#puts ENV['TWITTER_API_SECRET']

#a coller pour faire du irb a partir de  la !
#binding.pry

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
puts client
end
end

login_twitter


# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!! mais oui mamen !')					#ne fonctionne pas en l'état















