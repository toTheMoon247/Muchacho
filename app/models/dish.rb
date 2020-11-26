class Dish < ApplicationRecord
  has_many :menu_items
  has_one :wine
  has_one_attached :photo
end
