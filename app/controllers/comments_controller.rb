class CommentsController < ApplicationController

	def create
		@canteen = Canteen.find(params[:canteen_id])
  		@comment = @canteen.comments.build(params[:comment])
  		if @comment.save
  			flash[:notice] = "Koment uspesne pridany"
  		else
  			flash[:error] = "Chyba pri pridavani komentu!"
  		end

  		redirect_to @canteen
  	end

  	def upvote
  		Comment.increment_counter(:upvote_count, params[:comment_id])

  		redirect_to Canteen.find(params[:canteen_id]), :notice => "Uspesne upvotovany"
	end

	def downvote
		Comment.increment_counter(:downvote_count, params[:comment_id])

		redirect_to Canteen.find(params[:canteen_id]), :notice => "Uspesne downvotovany"
	end

end
