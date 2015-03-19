class RemCol < ActiveRecord::Migration
  def change
    remove_column :flirts, :opening_line
  end
end
