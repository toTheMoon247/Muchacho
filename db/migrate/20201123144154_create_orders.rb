class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      # t.references :dish, null: false, foreign_key: true
      # t.references :wine, null: false, foreign_key: true
      t.integer :total_cost_cents, null: false
      t.references :restaurant, foreign_key: true
      t.references :user, null:false, foreign_key:true
      t.integer :discount_percentage

      t.timestamps
    end
  end
end
