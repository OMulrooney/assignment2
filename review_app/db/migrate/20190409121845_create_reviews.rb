class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.float :rating
      t.string :reviewText
      t.date :datePosted

      t.timestamps
    end
  end
end
