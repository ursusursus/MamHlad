class Comment < ActiveRecord::Base
  attr_accessible :author, :canteen_id, :content, :downvote_count, :upvote_count

  belongs_to :canteen
end
