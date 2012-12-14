class AddPhotosToCanteenAndMeal < ActiveRecord::Migration
	
	def self.up
		add_attachment :canteens, :photo
		add_attachment :meals, :photo
	end

	def self.down
		remove_attachment :canteens, :photo
		remove_attachment :meals, :photo
	end

end
