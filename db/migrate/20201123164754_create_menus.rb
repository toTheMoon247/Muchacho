class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.boolean :tasting
      t.integer :discount
      t.references :restaurant

      t.timestamps
    end
  end
end
