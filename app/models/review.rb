class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, foreign_key: :guest_id, class_name: 'User'
end
