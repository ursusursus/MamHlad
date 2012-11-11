class Wait < ActiveRecord::Base
  attr_accessible :canteen_id, :value

  belongs_to :canteen
end
