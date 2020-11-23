class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :dietary
      t.string :category
      t.integer :delivery_radius
      t.float :average_rating
      t.string :spotify_url
      t.string :instagram_url
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
