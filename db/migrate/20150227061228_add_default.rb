class AddDefault < ActiveRecord::Migration
  def change
    remove_column :flirts, :sent_before
  end
  # def up
  #   add_column :flirts, :sent_before, :boolean, default: false
  # end
end
