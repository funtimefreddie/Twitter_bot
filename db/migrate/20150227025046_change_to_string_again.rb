class ChangeToStringAgain < ActiveRecord::Migration
  def change
    change_column :flirts, :tweet_id, :string
  end
end
