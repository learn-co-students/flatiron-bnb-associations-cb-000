class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.string :price
      t.integer :host_id

      t.timestamps null: false
    end
  end
end
