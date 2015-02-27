class Robot < ActiveRecord::Base

  # code to find homophobic tweets and respond to them
  def self.find_victims number, words

    # find tweets
    Client.search(words, lang: "en").take(number).each { |t|

      # record twitter user and tweet num.
      if Victim.where(name: t.user.screen_name).count == 0
        # add to table
        Victim.create(name: t.user.screen_name, tweet_id: t.id.to_s)
        # tweet them
        Client.update(Robot.flirt(t.user.screen_name, true), in_reply_to_status_id: t.id)
      end

    }

  end

  # code to randomly generate a flirty message
  def self.flirt name, opening_line
    "@" + name + " " + Flirt.where(opening_line: opening_line).order_by_rand.first.message 
  end

  # code to receive suggestions for flirty messages
  def self.suggestions

    hashtag = "#fredflirts"   

    #search from last tweet, if exists
    if Flirt.where(suggested: true).count == 0
      since_id = 0
    else
      since_id = Flirt.where(suggested: true).last.tweet_id
    end

    #loop new tweets
    Client.search(hashtag, since_id: since_id).each do |t|

       # strip hashtag from message    
      message = t.text.gsub(hashtag, "")
      message = message.gsub("@funktimefreddie", "").strip!          

      is_question = message.include? "?"      

      # add to flirt table if we don't have it
      if Flirt.where(message: message).count == 0
        Flirt.create(message: message, opening_line: is_question, suggested: true, tweet_id: t.id.to_s)
      end

    end

  end

  # check for responses from victimes
  def check_responses

  end






end
