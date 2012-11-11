class CreateServeds < ActiveRecord::Migration
  def change
    create_table :serveds do |t|
      t.date :served_at
      t.integer :meal_id

      t.timestamps
    end
  end
end
