class AddImpressionColumnsToMeal < ActiveRecord::Migration
  def change
  	add_column :meals, :impression_positive, :integer, :default => 0
  	add_column :meals, :impression_neutral, :integer, :default => 0
  	add_column :meals, :impression_negative, :integer, :default => 0
  end
end
