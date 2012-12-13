class MealPick < ActiveRecord::Base
  attr_accessible :meal_id

  belongs_to :meal

  
end
