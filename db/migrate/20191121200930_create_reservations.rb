class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.integer :guest_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
