class AddListingIdToCity < ActiveRecord::Migration
  def change
    add_column :cities, :listing_id, :integer
  end
end
