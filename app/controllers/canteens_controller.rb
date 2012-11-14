class CanteensController < ApplicationController

  def index
    @canteens = Canteen.all
  end

  def show
    @canteen = Canteen.find(params[:id])
    #Served.where(served_at: Date.today)
  end

  def like 	
    canteen = Canteen.find(params[:canteen_id])
    Canteen.increment_counter("likes_count", canteen.id)
  	# Canteen.update(canteen.id, :likes_count => canteen.likes_count + 1)

    redirect_to canteen
  end


end
