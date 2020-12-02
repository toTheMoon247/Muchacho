class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurants = Restaurant.near(params.dig(:search, :query), 6) if params.dig(:search, :query).present?
    # Fetch query params
    query = params.dig(:search, :query) || ""
    # Fetch Filters params
    categories = params.dig(:search, :categories)&.reject(&:blank?) || []
    dietary = params.dig(:search, :dietary)&.reject(&:blank?) || []
    minimum_rating = params.dig(:search, :average_rating)&.reject(&:blank?)&.first&.to_i # Either nil either an integer

    # Get restaurant by a name
    # @restaurants = @restaurants.where("name ILIKE ?", query) unless query.empty?
    @restaurants = @restaurants.where(category: categories) unless categories.empty?
    @restaurants = @restaurants.where(dietary: dietary) unless dietary.empty?
    @restaurants = @restaurants.where("average_rating > ?",minimum_rating) unless minimum_rating.nil?
    @menus = Menu.all

  end


  # TODO: Tick the right boxes according to the params when the page is loading
  # Clear all filters

  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurants_path(@restaurant.id)
    else
      render :new
    end
  end

   private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :description, :dietary, :category, :photo, :instagram_url, :spotify_url, :phone_number)
  end
end
