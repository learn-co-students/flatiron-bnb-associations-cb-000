class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.integer :guest
      t.integer :reservation_id

      t.timestamps null: false
    end
  end
end
