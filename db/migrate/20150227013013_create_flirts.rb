class CreateFlirts < ActiveRecord::Migration
  def change
    create_table :flirts do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
