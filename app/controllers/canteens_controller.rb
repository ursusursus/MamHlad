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
      MealPick.create(:meal_id => params[:meal])
      impression_value = params[:impression]
      if impression_value == "1"
        Meal.increment_counter(:impression_positive, meal.id)
      else
        Meal.increment_counter(:impression_negative, meal.id)
      end
    end
    
    redirect_to canteen, :notice => "Uspesne ste hlasovali"
  end

end
