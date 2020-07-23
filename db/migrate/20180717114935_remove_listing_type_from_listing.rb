class RemoveListingTypeFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :listing_type, :string
  end
end
