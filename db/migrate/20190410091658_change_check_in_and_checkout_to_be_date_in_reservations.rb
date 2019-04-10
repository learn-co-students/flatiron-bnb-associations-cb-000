class ChangeCheckInAndCheckoutToBeDateInReservations < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :checkin, :date
    change_column :reservations, :checkout, :date
  end
end
