class AddForeginKeyToWorkingTime < ActiveRecord::Migration
  def change
  	add_column :working_times, :canteen_id, :integer
  end
end
