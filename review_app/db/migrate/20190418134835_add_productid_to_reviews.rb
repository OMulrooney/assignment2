class AddProductidToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :productId, :int
  end
end
