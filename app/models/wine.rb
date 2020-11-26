class Wine < ApplicationRecord
  belongs_to :dish
  has_many :wine_orders, dependent: :destroy
end
