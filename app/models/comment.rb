class Comment < ActiveRecord::Base
  attr_accessible :author, :canteen_id, :content, :downvote_count, :upvote_count
  validates :author, :content, :presence => true
  belongs_to :canteen
end
