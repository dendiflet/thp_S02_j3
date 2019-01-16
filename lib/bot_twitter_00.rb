require 'twitter'
  require 'dotenv'
    require 'pry'

puts "\e[H\e[2J"

  Dotenv.load
client = []


def login_twitter


#####TEST dotenv
puts "normalement le hash de mes clefs secretes doit s'afficher en dessous"
puts "#{ENV}"															#fonctionne pas sa mere !
puts "ici doit s'afficher seulement une clef :"
puts ENV['TWITTER_API_SECRET']
puts " "
#####END test dotenv



#a coller pour faire du irb a partir de  la !
#binding.pry



	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	puts "ici devrait s'afficher client"
	puts "#{client}"
	end
	return client 
end

client = login_twitter
puts "voici #{client}"
#binding.pry

# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!! mais oui mamen !')					#ne fonctionne pas en l'état















