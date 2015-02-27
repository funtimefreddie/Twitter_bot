class ChangeData < ActiveRecord::Migration
  def change
    # change_column :victims, :tweet_id, :integer, 'integer USING CAST(tweet_id AS integer)'
    execute 'ALTER TABLE victims ALTER COLUMN tweet_id TYPE integer USING (tweet_id::integer)'
  end
end
