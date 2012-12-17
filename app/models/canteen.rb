class Canteen < ActiveRecord::Base
	attr_accessible :likes_count, :name_full, :name_short, :photo

	has_many :meals
	has_many :waits
	has_many :comments
	has_one :working_time
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	def todays_waits
		waits.where(["created_at >= ? AND created_at < ?",Date.today.beginning_of_day, Date.today.end_of_day])
	end

	def todays_meals
		meals.joins(:serving_dates).where(serving_dates: {:served_at => Date.today}).sort_by {|meal| meal.todays_pick_count}.reverse
	end

	def todays_most_picked_meal
		todays_meals.first
	end

	def top_picked_meal
		meals.sort_by {|m| m.meal_picks.count}.reverse.first
	end

	def top_liked_meal
		meals.sort_by {|m| m.impression_sum}.reverse.first
	end

	def to_s
		name_full
	end

end
