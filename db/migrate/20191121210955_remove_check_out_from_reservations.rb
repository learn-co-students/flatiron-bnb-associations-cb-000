class RemoveCheckOutFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :check_out, :datetime
  end
end
