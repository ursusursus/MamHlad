class CanteensController < ApplicationController
  def index
 	@canteens = Canteen.all
  end

  def show
  	@canteen = Canteen.find(params[:id])
    #@meals = Meal.where()
  end

  def like
  	@canteen = Canteen.find(params[:id])
  	@canteen.update_attribute(:likes_count => 18)

  	redirect_to @canteen  
  end


end
