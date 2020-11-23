class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :cost
      t.string :meal_category
      t.string :dietary
      t.text :instructions
      t.integer :prep_time
      t.string :threed_model

      t.timestamps
    end
  end
end
