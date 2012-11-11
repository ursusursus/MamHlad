class CreateCanteens < ActiveRecord::Migration
  def change
    create_table :canteens do |t|
      t.string :name_short
      t.string :name_full
      t.integer :likes_count

      t.timestamps
    end
  end
end
