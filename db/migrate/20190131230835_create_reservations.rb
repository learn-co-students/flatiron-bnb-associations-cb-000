class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.string :listing
      t.string :guest

      t.timestamps
    end
  end
end
