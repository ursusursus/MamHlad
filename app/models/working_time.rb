class WorkingTime < ActiveRecord::Base
  attr_accessible :friday, :monday, :saturday, :sunday, :thursday, :tuesday, :wednesday, :canteen_id

  belongs_to :canteen
end
