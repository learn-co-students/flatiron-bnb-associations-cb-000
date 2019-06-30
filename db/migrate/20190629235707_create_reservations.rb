class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      
      t.integer :guest_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
