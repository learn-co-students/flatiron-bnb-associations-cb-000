class RemoveHostIdFromNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    remove_column :neighborhoods, :host_id, :integer
  end
end
