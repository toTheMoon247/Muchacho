class Dish < ApplicationRecord
  has_many :menu_items
  has_many :menus, through: :menu_items
  has_many :restaurants, through: :menus
  has_many :dish_orders, dependent: :destroy
  has_one :wine
  has_one_attached :photo
end
