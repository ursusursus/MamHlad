class CanteensController < ApplicationController
  def index
 	@canteens = Canteen.all
  end

  def show
  	@canteen = Canteen.find(params[:id])
    #Served.where(served_at: Date.today)
  end

  def like
  	@canteen = Canteen.find(params[:id])
  	@canteen.update_attribute(:likes_count => 18)

  	redirect_to @canteen  
  end


end
