class DropPickCountColumn < ActiveRecord::Migration
  def up
  	remove_column :meals, :pick_count
  end

  def down
  end
end
