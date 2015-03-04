class Flirt < ActiveRecord::Base

  def self.review

    Flirt.where(sent_before: false).each { |f|
      puts f.message
      
      if gets.chomp == "D"
        f.delete
      end
    }

  end
end
