class ChangeGuestColumnName < ActiveRecord::Migration
  def change
    rename_column :reservations, :guest, :guest_id
    rename_column :reviews, :guest, :guest_id
  end
end
