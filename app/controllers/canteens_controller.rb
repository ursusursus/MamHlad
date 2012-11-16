class CanteensController < ApplicationController

  def index
    @canteens = Canteen.all
  end

  def show
    @canteen = Canteen.find(params[:id])
  end

  def like 	
    canteen = Canteen.find(params[:canteen_id])
    Canteen.increment_counter(:likes_count, canteen.id)

    redirect_to canteen
  end

  def vote
    canteen = Canteen.find(params[:canteen_id])
    wait = Wait.create(:value => params[:wait], :canteen_id => canteen.id)
    if params[:meal]
      meal = Meal.find(params[:meal])
      Meal.increment_counter(:pick_count, meal.id)
    end

    redirect_to canteen
  end

  # def upvote_comment
  #   Comment.increment_counter(:upvote_count, comment.id)
  # end

  # def downvote_comment
  #   Comment.increment_counter(:downvote_count, comment.id)
  # end


end
