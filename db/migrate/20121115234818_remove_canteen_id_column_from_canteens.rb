class RemoveCanteenIdColumnFromCanteens < ActiveRecord::Migration
  def up
  	remove_column :canteens, :canteen_id
  end

  def down
  end
end
