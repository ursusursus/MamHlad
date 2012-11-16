class ServingDate < ActiveRecord::Base
  attr_accessible :meal_id, :served_at

  belongs_to :meal
end
