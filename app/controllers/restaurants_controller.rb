class RestaurantsController < ApplicationController

  def index
    if params[:search].present?
      if params[:search][:categories].last.present? || params[:search][:dietary].last.present?
        categories = params[:search][:categories][1..-1]
        @category_instances =  categories.map do |category|
         Restaurant.where(category: category)
        end.flatten
        dietary = params[:search][:dietary][1..-1]
        @dietary_instances =  dietary.map do |diet|
         Restaurant.where(dietary: diet)
        end.flatten
        @restaurants = (@category_instances + @dietary_instances).uniq
      else
        @restaurants = Restaurant.all
      end
    else
      @restaurants = Restaurant.all
    end
    @restaurants = @restaurants.near(params[:query], 6) if params[:query].present?
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end
end
