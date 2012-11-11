class AddPickCountToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :pick_count, :integer
  end
end
