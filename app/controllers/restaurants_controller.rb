class RestaurantsController < ApplicationController


def index
  @restaurants = Restaurant.all
  @restaurants = @restaurants.where(category: params[:category]) if params[:category].present?
end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

end
