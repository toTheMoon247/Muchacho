class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :menus, dependent: :destroy
  has_many :menu_items, through: :menus
  has_many :orders, dependent: :destroy
  has_many :dishes, through: :menu_items
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :category, :address ],
    using: {
      tsearch: { prefix: true }
    }

  RATING_IN_WORD = { 3 => "Good", 4 => "Very good", 5 => "Excellent" }
  ICONS = {
            'Vegan' => '<i class="fas fa-leaf"></i>',
            'Gluten free'=> '<i class="fas fa-wheat"></i>',
            'Vegetarian' => '<i class="fas fa-seedling"></i>',
          }

  def alacarte_menu
    menus.where(tasting: false).first
  end

  def tasting_menu
    menus.where(tasting: true).first
  end

  def rating_in_words
    if self.average_rating.present?
      rating = self.average_rating.round
      return RATING_IN_WORD[rating]
    else
      return "Not rated yet"
    end
  end

  def dietary_icon
    if self.dietary.present?
      icon = ICONS[self.dietary]
      if icon.nil?
        return '<i class="far fa-empty-set"></i>'
      else
        return icon
      end
    else
      return "<div class='empty'></div>"
    end
  end


end
