class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address, null: false
      t.string :listing_type, null: false
      t.string :title, null: false
      t.string :description
      t.decimal :price, precision: 10, scale: 2

      t.belongs_to :neighborhood, index: true, foreign_key: true, null: false
      t.belongs_to :host, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
