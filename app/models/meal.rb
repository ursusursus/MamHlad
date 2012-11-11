class Meal < ActiveRecord::Base
  attr_accessible :name, :price, :pick_count, :canteen_id

  belongs_to :canteen
  has_many :serveds
end
