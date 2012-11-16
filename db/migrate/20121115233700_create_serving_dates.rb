class CreateServingDates < ActiveRecord::Migration
  def change
    create_table :serving_dates do |t|
      t.date :served_at
      t.integer :meal_id

      t.timestamps
    end
  end
end
