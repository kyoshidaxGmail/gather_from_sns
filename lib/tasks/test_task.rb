class Tasks::TestTask
  def self.test
    require 'twitter'
    consumer_key = '02qpfJbefBqrcWoQ7EEyf5G9v'
    consumer_secret = '7UsP54NIdCA6ywdITp4HaJnX7eVWkN4gajkFGSXjd9YIiUpG1u'
    access_token = '76881556-bD8Pgi7t550chAzf1kncwcTCRKk8Tjlr6ObqPwLr1'
    access_token_secret = 'cru7cQBcOLBg6eA9DgXda1x6T1diYuk32xXvlL0gdmHUH'

    client = Twitter::REST::Client.new(
      consumer_key: consumer_key,
      consumer_secret: consumer_secret,
      access_token: access_token,
      access_token_secret: access_token_secret,
    )
    query = "matsudo"
    since_id = nil
    result_tweets = client.search(query, count: 200, result_type: "recent", exclude: "retweets")

    result_tweets.each_with_index do |tweet, i|
      p "#{i} : #{tweet.user.screen_name} : #{tweet.user.location} : #{tweet.user.lang} : #{tweet.full_text}"
    end
  end
end