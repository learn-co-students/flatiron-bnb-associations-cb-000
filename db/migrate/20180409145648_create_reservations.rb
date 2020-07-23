class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.references :guest, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
