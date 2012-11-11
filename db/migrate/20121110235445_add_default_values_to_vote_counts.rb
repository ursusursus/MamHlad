class AddDefaultValuesToVoteCounts < ActiveRecord::Migration
  def change
  	change_column :comments, :upvote_count, :integer, :default => 0
  	change_column :comments, :downvote_count, :integer, :default => 0
  end
end
