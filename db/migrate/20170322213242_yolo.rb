class Yolo < ActiveRecord::Migration
  def change
    remove_column :listings, :neighborhood
    remove_column :listings, :host
    add_column :listings, :neighborhood_id, :integer
    add_column :listings, :host_id, :integer
    remove_column :neighborhoods, :city
    add_column :neighborhoods, :city_id, :integer
  end
end
