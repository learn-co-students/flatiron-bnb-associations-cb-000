class RemoveMisspelledColumns < ActiveRecord::Migration
  def change
    remove_column :reservations, :user_id 
    remove_column  :reviews, :reseration_id
    remove_column :reviews, :user_id
  end
end
