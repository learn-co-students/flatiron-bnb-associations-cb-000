class RemoveCheckInFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :check_in, :datetime
  end
end
