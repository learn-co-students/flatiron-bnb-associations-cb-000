class AddColumnsToListing < ActiveRecord::Migration
  def change
    add_column :listings, :neighborhood_id, :integer
    add_column :listings, :price, :decimal
    add_column :listings, :host_id, :integer
  end
end
