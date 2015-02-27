class ChangeToString < ActiveRecord::Migration
  def change
    change_column :victims, :tweet_id, :string
  end
end
