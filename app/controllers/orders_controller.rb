class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def new
  end

  def create
    @order = Order.new

    @order.restaurant_id = params[:restaurant_id]
    @order.user_id = current_user.id
    @order.total_cost_cents = 0
      if @order.save!
        dishes = strong_params[:dish_id].split(",").reject(&:blank?)
        dishes.each do |dish|

          @dish_order = DishOrder.new(dish_id: dish.to_i, order: @order)
          @dish_order.save!
        end
        wines = strong_params[:wine_id].split(",").reject(&:blank?)
        wines.each do |wine|

          @wine_order = WineOrder.new(wine_id: wine.to_i, order: @order)
          @wine_order.save!
        end

          @order.calculate_costs
        redirect_to order_path(@order)
      else
          render "restaurant/show"
      end
  end

  def show
    @order = Order.find(params[:id])
    @restaurant = @order.restaurant
  end

  def is_ready
    @order = Order.find(params[:id])
    @order.update_attributes(status: "ready")
    redirect_to orders_path
  end

  def is_being_delivered
    @order = Order.find(params[:id])
    @order.update_attributes(status: "being delivered")
    redirect_to orders_path
  end

  private
  def strong_params
    params.require(:order).permit(:dish_id, :wine_id, :status)
  end

end
