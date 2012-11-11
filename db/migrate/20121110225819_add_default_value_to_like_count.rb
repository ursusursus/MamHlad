class AddDefaultValueToLikeCount < ActiveRecord::Migration
  def change
  	change_column :canteens, :likes_count, :integer, :default => 0
  end
end
