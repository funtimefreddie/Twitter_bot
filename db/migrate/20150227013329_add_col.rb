class AddCol < ActiveRecord::Migration
  def change
    add_column :flirts, :opening_line, :boolean
  end
end
