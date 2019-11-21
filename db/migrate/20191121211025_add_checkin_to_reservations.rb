class AddCheckinToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :datetime
  end
end
