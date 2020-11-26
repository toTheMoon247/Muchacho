class Wine < ApplicationRecord
  belongs_to :dish
  has_one_attached :photo
end
