class RenameForeignKeyReview < ActiveRecord::Migration
  def change
    rename_column :reviews, :user_id, :guest_id
  end
end
