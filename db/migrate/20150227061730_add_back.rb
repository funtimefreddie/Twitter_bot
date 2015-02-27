class AddBack < ActiveRecord::Migration
  def change
    add_column :flirts, :sent_before, :boolean, default: false
  end
end
