class CreateMealPicks < ActiveRecord::Migration
  def change
    create_table :meal_picks do |t|
      t.integer :meal_id

      t.timestamps
    end
  end
end
