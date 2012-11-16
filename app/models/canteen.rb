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
		meals.joins(:serving_dates).where(serving_dates: {:served_at => Date.today}).order("pick_count DESC")
	end

	def upvote_comment
	end

	def downvote_comment
	end

end
