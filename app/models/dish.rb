class Dish < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  has_many :menus, through: :menu_items
  has_many :restaurants, through: :menus
  has_many :dish_orders, dependent: :destroy
  has_one :wine
  has_one_attached :photo
  has_rich_text :preparation
end
