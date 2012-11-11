class Canteen < ActiveRecord::Base
	attr_accessible :likes_count, :name_full, :name_short

	has_many :meals, :order => "pick_count DESC"
	has_many :waits
	has_many :comments
	has_one :working_time

	def 

	def like_canteen
		self.likes_count
	end

	def upvote_comment
	end

	def downvote_comment
	end

end
