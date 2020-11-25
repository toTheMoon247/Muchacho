class Order < ApplicationRecord  
  belongs_to :user
  belongs_to :restaurant
  belongs_to :wine, optional: true
  belongs_to :dish, optional: true
  has_many :menus, through: :restaurant
  has_many :dish_orders
  has_many :wine_orders

  def calculate_costs
    dish_sum = dish_orders.map { |dish_order| dish_order.dish.cost }.sum
    wine_sum = wine_orders.map { |wine_order| wine_order.wine.cost }.sum
    update_column("total_cost_cents", dish_sum + wine_sum)
  end
end
