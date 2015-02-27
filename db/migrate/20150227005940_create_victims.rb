class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :user_name
      t.string :tweet_id

      t.timestamps null: false
    end
  end
end
