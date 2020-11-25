class ChangeWinesToOrders < ActiveRecord::Migration[6.0]
  def change
    change_column_null :orders, :wine_id, true
    change_column_null :orders, :dish_id, true
  end
end
