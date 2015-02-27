namespace :robot do

  desc "TODO"
  task find: :environment do
    Robot.start_convo
  end

  desc "TODO"
  task respond: :environment do
    Robot.run_responses
  end  

  desc "TODO"
  task get_flirt: :environment do
    Robot.get_suggestions
  end

  desc "TODO"
  task do_ya_thing: :environment do

    Robot.get_suggestions

    if Robot.have_responses
      Robot.run_responses
    else   
      Robot.start_convo(1, "fucking faggots")
    end
  end

  # desc "TODO"
  # task test: :environment do    
  #   Flirt.create(message: "test")
  # end

end
