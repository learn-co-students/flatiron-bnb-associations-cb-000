class AddCheckoutToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkout, :datetime
  end
end
