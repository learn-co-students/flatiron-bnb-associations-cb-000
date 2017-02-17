class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.decimal :price
      t.string :listing_type
      t.references :host, references: :users, index: true
      t.references :neighborhood, index: true

      t.timestamps null: false
    end
    add_foreign_key :listings, :users, column: :host_id
    add_foreign_key :listings, :neighborhoods
  end
end
