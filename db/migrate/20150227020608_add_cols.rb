class AddCols < ActiveRecord::Migration
  def change
    add_column :flirts, :suggested, :boolean
    add_column :flirts, :tweet_id, :integer
  end
end
