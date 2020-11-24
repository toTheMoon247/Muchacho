class Restaurant < ApplicationRecord
  has_many :menus, dependent: :destroy
  has_many :menu_items, through: :menus
end
