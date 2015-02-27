class Robot < ActiveRecord::Base

  def self.search_words words
      Client.search(words, lang: "en").first.text
  end

  # def self.follow_search words
  #   user = Client.search(words, lang: "en").first.user.screen_name
    
  #   Client.follow(user)
  # end

  def self.loop words
    Client.search(words, lang: "en").take(5).each { |t|
      # byebug
      tweets.push t.text
    } 
    return tweets
  end

  # code to find homophobic tweets and respond to them
  def self.find_victim number, words

    # find tweets
    Client.search(words, lang: "en").take(number).each { |t|

      # record twitter user and tweet num.
      Victim.create(name: t.user.screen_name, tweet_id: t.id.to_s)

      # tweet them
      Client.update(Robot.flirt)

    }

  end

  # code to randomly generate a flirty message
  def self.flirt name, opening_line
    Flirt.where(opening_line: opening_line).order_by_rand.first.message + " @" + name  
  end

  # code to receive suggestions for flirty messages
  def receive_suggestions
  end

  # check for responses from victimes
  def check_responses

  end



end
