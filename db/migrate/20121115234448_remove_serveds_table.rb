class RemoveServedsTable < ActiveRecord::Migration
  def up
  	drop_table :serveds
  end

  def down
  end
end
