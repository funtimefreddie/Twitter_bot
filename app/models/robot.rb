class Robot < ActiveRecord::Base

  # define where to search from
  def self.last_search
    Client.user_timeline("@funktimefreddie").first.id
    # Client.mentions_timeline.first.text
  end

   # generate a flirty message
  def self.flirt name, opening_line
    flirt_to_send = Flirt.where(opening_line: opening_line, sent_before: false).order_by_rand.first  

    flirt_to_send.update_attributes(sent_before: true)

    message = "@" + name + " " + flirt_to_send.message 
  end 

  # code to find homophobic tweets and respond to them
  def self.start_convo number, words

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
 

  # code to receive suggestions for flirty messages
  def self.get_suggestions

    hashtag = "#fredflirts"      

    #search from last tweet, if exists
    since_id = Flirt.where(suggested: true).last.tweet_id.to_i

    #loop new tweets
    Client.search(hashtag, since_id: since_id).each { |t|

       # strip hashtag from message   
    if t.user.screen_name != "funktimefreddie"     
      message = t.text.gsub(hashtag, "")
      message = message.gsub("@funktimefreddie", "").strip!          

      is_question = message.include? "?"      

      # add to flirt table if we don't have it
      if Flirt.where(message: message).count == 0
        Flirt.create(message: message, opening_line: is_question, suggested: true, tweet_id: t.id.to_s)
      end
    end

    }

  end

  def self.have_responses
    return Client.mentions_timeline(since_id: Robot.last_search).count > 0
  end

  # respond to mentions
  def self.run_responses

    # Client.search("@funktimefreddie", since_id: Robot.last_search).each { |t|
     Client.mentions_timeline(since_id: Robot.last_search).each { |t|      

      if t.hashtags.include? "#fredflirts" 
      else

        name = t.user.screen_name
        tweet_id = t.id          
        Client.update(Robot.flirt(t.user.screen_name, false), in_reply_to_status_id: t.id)
        Victim.create(name: name, tweet_id: t.id)
         
      end      

    }
  end 




end
