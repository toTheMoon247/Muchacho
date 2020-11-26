class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurants = @restaurants.near(params.dig(:search, :query), 6) if params.dig(:search, :query).present?
    if params.dig(:search, :categories)&.any? || params.dig(:search, :dietary)&.any?
      # categories = params[:search][:categories][1..-1]
      # @category_instances =  categories.map do |category|
      #  Restaurant.where(category: category)
      # end.flatten
      # dietary = params[:search][:dietary][1..-1]
      # @dietary_instances =  dietary.map do |diet|
      #  Restaurant.where(dietary: diet)
      # end.flatten
      # @restaurants = (@category_instances + @dietary_instances).uniq
    end
      @restaurants = @restaurants.where(category: params.dig(:search, :categories).reject(&:blank?)) if params.dig(:search, :categories)&.reject(&:blank?)&.any?
      @restaurants = @restaurants.where(dietary: params.dig(:search, :dietary).reject(&:blank?)) if params.dig(:search, :dietary)&.reject(&:blank?)&.any?

  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end
end
