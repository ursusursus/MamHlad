class Meal < ActiveRecord::Base
  attr_accessible :name, :price, :impression_positive, :impression_neutral, :impression_negative, :photo, :canteen_id

  belongs_to :canteen
  has_many :serving_dates
  has_many :meal_picks
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def todays_pick_count
  	meal_picks.where(["created_at >= ? AND created_at < ?",Date.today.beginning_of_day, Date.today.end_of_day]).count
  end

  def impression_sum
  	impression_positive * 2 + impression_negative * -1 
  end
end
