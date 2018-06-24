class AddDescriptionNeighborhoodHostAndPriceToListings < ActiveRecord::Migration
  def change
    add_column :listings, :description, :text
    add_column :listings, :neighborhood, :string
    add_column :listings, :neighborhood_id, :string
    add_column :listings, :host, :string
    add_column :listings, :host_id, :integer
    add_column :listings, :price, :decimal
  end
end
