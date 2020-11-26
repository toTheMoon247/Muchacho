class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :menus, dependent: :destroy
  has_many :menu_items, through: :menus
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :category, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
