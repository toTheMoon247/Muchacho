class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    if params[:search].present?
      categories = params[:search][:categories].reject(&:blank?)
      dietary = params[:search][:dietary].reject(&:blank?)
      minimum_rating = params[:search][:average_rating].reject(&:blank?).first&.to_i # Either nil either an integer
      @restaurants = @restaurants.where(category: categories) unless categories.empty?
      @restaurants = @restaurants.where(dietary: dietary) unless dietary.empty?
      @restaurants = @restaurants.where("average_rating > ?",minimum_rating) unless minimum_rating.nil?
    end

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
