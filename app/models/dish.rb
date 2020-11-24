class Dish < ApplicationRecord
  has_many :menu_items
  has_one :wine
end
