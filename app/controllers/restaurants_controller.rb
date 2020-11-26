class RestaurantsController < ApplicationController
  def index
      @restaurants = Restaurant.all
      @restaurants = @restaurants.near(params[:query], 6)
      # @restaurants = @restaurants.global_search(params[:query]) if params[:query]
      @restaurants = @restaurants.where(category: params[:category]) if params[:category]
      # @restaurants = @restaurants.where(dietary: params[:dietary]) if params[:dietary]
      @query = params[:query]
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save!
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

   private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :description, :dietary, :category, :photo)
  end
end
