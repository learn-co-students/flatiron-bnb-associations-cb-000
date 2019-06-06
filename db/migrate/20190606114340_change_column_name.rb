class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :reservations, :checkin_time, :checkin
  end
end
