class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.belongs_to :listing, index: true
      t.belongs_to :user, index: true, :foreign_key => "guest_id"
      t.timestamps null: false
    end
  end
end
