class AddTimesToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :datetime
    add_column :reservations, :checkout, :datetime
  end
end
