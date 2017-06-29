class AddReviewIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :review_id, :integer
  end
end
