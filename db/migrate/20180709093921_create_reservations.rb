class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin, null: false
      t.date :checkout, null: false
      t.belongs_to :listing, index: true, foreign_key: true, null: false
      t.belongs_to :guest, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
