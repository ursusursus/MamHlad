class Canteen < ActiveRecord::Base
	attr_accessible :likes_count, :name_full, :name_short

	has_many :meals
	has_many :waits
	has_many :comments
	has_one :working_time

	def todays_waits
		waits.where(["created_at >= ? AND created_at < ?",Date.today.beginning_of_day, Date.today.end_of_day])
	end

	def todays_meals
		meals.joins(:serving_dates).where(serving_dates: {:served_at => Date.today}).sort_by {|meal| meal.todays_pick_count}.reverse
	end

	def todays_most_picked_meal
		todays_meals.first
	end

	def top3_most_picked
		meals.sort_by {|m| m.meal_picks.count}.reverse.first(3)
	end

	def top3_most_liked
		meals.sort_by {|m| m.impression_sum}.reverse.first(3)
	end

end
