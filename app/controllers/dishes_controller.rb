class DishesController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)

    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @dish.save!
      MenuItem.create(dish: @dish, menu: @restaurant.alacarte_menu)
      MenuItem.create(dish: @dish, menu: @restaurant.tasting_menu) if params.dig(:dish, :tasting, :menu) == "1"
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :cost, :meal_category, :dietary, :photo, :instructions, :prep_time)
  end
end
