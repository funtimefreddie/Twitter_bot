namespace :robot do

  # search for homophobic tweets and send them a message
  # set up to run every hour and a random variable - e.g. there is a 17.5% chance each hour he will send a tweet
  desc "sends a tweet "
  task find: :environment do
    rand_variable = rand
    if rand_variable < 0.175
      Robot.start_convo(1, "I hate fags")
    end
  end

  # respond to people who have tweeted back
  desc "responds to all responses"
  task respond: :environment do
    Robot.run_responses
  end 

  # pick up any suggestions
  desc "looks for flirt suggestions"
  task get_flirt: :environment do
    Robot.get_suggestions
  end

end
