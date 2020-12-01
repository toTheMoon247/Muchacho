class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :name, presence: true
  # after_create :update_rating

  # def update_rating
  #   sum = 0
  #   self.restaurants.reviews.each { |review| sum = sum + review.rating}
  #   average_rating = sum / self.restaurant.reviews.length
  #   self.restaurant.update(average_rating: average_rating)
  # end
end
