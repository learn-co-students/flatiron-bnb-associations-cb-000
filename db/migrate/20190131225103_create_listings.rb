class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :host
      t.string :title
      t.string :listing_type
      t.string :address
      t.integer :price
      t.string :neighborhood

      t.timestamps
    end
  end
end
