class ChangeName < ActiveRecord::Migration
  def change
    rename_column :victims, :user_name, :name
  end
end
