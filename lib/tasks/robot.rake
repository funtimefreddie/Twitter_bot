namespace :robot do

  desc "TODO"
  task find: :environment do
    Robot.run_responses
  end

  desc "TODO"
  task respond: :environment do
    Robot.run_responses
  end  

  desc "TODO"
  task get_flirt: :environment do
    Robot.get_suggestions
  end

  # desc "TODO"
  # task test: :environment do    
  #   Flirt.create(message: "test")
  # end

end
