class CreateWaits < ActiveRecord::Migration
  def change
    create_table :waits do |t|
      t.integer :value
      t.integer :canteen_id

      t.timestamps
    end
  end
end
