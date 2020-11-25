class RestaurantsController < ApplicationController
  def index
      @restaurants = Restaurant.all
      @restaurants = @restaurants.near(params[:query], 2)
      # @restaurants = @restaurants.global_search(params[:query]) if params[:query]
      @restaurants = @restaurants.where(category: params[:category]) if params[:category]
      # @restaurants = @restaurants.where(dietary: params[:dietary]) if params[:dietary]
      @query = params[:query]
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end
end
