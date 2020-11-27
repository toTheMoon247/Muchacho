class Wine < ApplicationRecord
  belongs_to :dish
  has_many :wine_orders, dependent: :destroy
  has_one_attached :photo
end
