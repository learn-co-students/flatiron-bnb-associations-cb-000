class RenameForeignKeyReservation < ActiveRecord::Migration
  def change
    rename_column :reservations, :user_id, :guest_id
  end
end
