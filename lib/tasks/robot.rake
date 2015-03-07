namespace :robot do

  desc "sends a tweet "
  task find: :environment do
    rand_variable = rand
    if rand_variable > 0.9
      Robot.start_convo(1, "faggots die")
    end
  end

  desc "responds to all responses"
  task respond: :environment do
    Robot.run_responses
  end  

  desc "looks for flirt suggestions"
  task get_flirt: :environment do
    Robot.get_suggestions
  end

  # desc "does everything"
  # task do_ya_thing: :environment do

  #   Robot.get_suggestions

  #   count = Robot.run_responses
     
  #   if count == 0
  #     Robot.start_convo(1, "faggots die")
  #   end

  # end

end
