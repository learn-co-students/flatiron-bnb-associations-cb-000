class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :guest_id
      t.integer :rating
      t.integer :reservation_id
      t.string :description

      t.timestamps
    end
  end
end
