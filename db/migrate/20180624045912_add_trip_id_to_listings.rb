class AddTripIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :trip_id, :integer
  end
end
