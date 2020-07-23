class AddUserFromListings2 < ActiveRecord::Migration
  def change
    rename_column :listings, :user_id, :host_id
  end
end
