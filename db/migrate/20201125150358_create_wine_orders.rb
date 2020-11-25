class CreateWineOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_orders do |t|
      t.references :order, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
