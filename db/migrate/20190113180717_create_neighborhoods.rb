class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.integer :city_id, null: false
      t.string :name, null: false

      t.timestamps  null: false
    end
  end
end
