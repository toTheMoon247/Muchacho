class WinesController < ApplicationController

  def new
    @dish = Dish.find(params[:dish_id])
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    @dish = Dish.find(params[:dish_id])
    @wine.dish = @dish
    @wine.save
    redirect_to dish_path(@dish)
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :cost, :year, :desrciption, :photo, :id)
  end

end
