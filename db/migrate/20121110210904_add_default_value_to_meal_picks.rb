class AddDefaultValueToMealPicks < ActiveRecord::Migration
  def change
  	change_column :meals, :pick_count, :integer, :default => 0
  end
end
