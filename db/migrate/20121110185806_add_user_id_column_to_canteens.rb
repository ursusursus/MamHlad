class AddUserIdColumnToCanteens < ActiveRecord::Migration
  def change
    add_column :meals, :canteen_id, :integer
  end
end
