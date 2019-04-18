class AddProfileidToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :profileId, :int
  end
end
