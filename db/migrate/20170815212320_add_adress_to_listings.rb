class AddAdressToListings < ActiveRecord::Migration
  def change
    add_column :listings , :address , :string 
  end
end
