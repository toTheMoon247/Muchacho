class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :cost
      t.string :year
      t.text :description
      t.references :dish
      t.references :restaurant

      t.timestamps
    end
  end
end
