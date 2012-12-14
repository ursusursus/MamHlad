class RemoveImpressionNeutral < ActiveRecord::Migration
  def up
  	remove_column :meals, :impression_neutral, :integer
  end

  def down
  	add_column :meals, :impression_neutral, :integer
  end
end
