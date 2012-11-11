class CommentsController < ApplicationController

	def create

		@canteen = Canteen.find(params[:canteen_id])
  		@comment = @canteen.comments.build(params[:comment])
  		@comment.save

  		redirect_to @canteen

  	end

end
