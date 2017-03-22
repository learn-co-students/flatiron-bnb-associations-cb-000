class Judgeme < ActiveRecord::Migration
  def change
    drop_table :reservations

    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer :guest_id
      t.integer :listing_id
      t.timestamps null: false
    end

    drop_table :reviews

    create_table :reviews do |t|
      t.integer :guest_id
      t.integer :rating
      t.integer :reservation_id
      t.text :description
      t.timestamps null: false
    end

    add_column :users, :name, :string
  end
end
