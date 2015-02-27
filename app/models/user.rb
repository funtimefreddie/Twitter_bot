class User < ActiveRecord::Base

  def welcome
    "hello " + self.name
  end
end
