class AddNamesToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :name, :string
  end
end
