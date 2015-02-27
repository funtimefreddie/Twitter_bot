class AddColtoFlirts < ActiveRecord::Migration
  def change
    add_column :flirts, :sent_before, :boolean
  end
end
