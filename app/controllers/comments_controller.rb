class CommentsController < ApplicationController

	def create
		@canteen = Canteen.find(params[:canteen_id])
  		@comment = @canteen.comments.build(params[:comment])
  		@comment.save

  		redirect_to @canteen
  	end

  	def upvote
  		Comment.increment_counter(:upvote_count, params[:comment_id])

  		redirect_to Canteen.find(params[:canteen_id])
	end

	def downvote
		Comment.increment_counter(:downvote_count, params[:comment_id])

		redirect_to Canteen.find(params[:canteen_id])
	end

end
