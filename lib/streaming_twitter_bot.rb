require 'twitter'
  require 'dotenv'

  Dotenv.load

#a coller pour faire du irb a partir de  la !
#binding.pry

def login_twitter
	client = Twitter::Streaming::Client.new do |config|
	  config.consumer_key        = "YOUR_CONSUMER_KEY"
	  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
	  config.access_token        = "YOUR_ACCESS_TOKEN"
	  config.access_token_secret = "YOUR_ACCESS_SECRET"
	end
end




#####
topics = ["#bonjour_monde"]
client.filter(track: topics.join(",")) do |object|				#ajouter des puts pour voir le live
  puts object.text if object.is_a?(Twitter::Tweet)
end
#puts "un de plus"


######peut etre un autre stream
class StreamListener(tweepy.StreamListener):

    def on_status(self, status):
        print(status.text)
        
    def on_error(self, status_code):
        if status_code == 420:
            return False

stream_listener = StreamListener()
stream = tweepy.Stream(auth=api.auth, listener=stream_listener)
stream.filter(track=["#bonjour_monde"],languages=["fr"])

#avev le paremetre la en plus, ca stream la personne directement
#stream.filter(follow=["2211149702"])



# http://socialmedia-class.org/twittertutorial.html
####
