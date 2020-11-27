class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :menus, dependent: :destroy
  has_many :menu_items, through: :menus
  has_many :orders, dependent: :destroy
  has_many :dishes, through: :menu_items
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :category, :address ],
    using: {
      tsearch: { prefix: true }
    }
    def alacarte_menu
      menus.where(tasting: false).first
    end

    def tasting_menu
      menus.where(tasting: true).first
    end
end
