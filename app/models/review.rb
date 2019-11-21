class Review < ApplicationRecord
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'host_id'
  belongs_to :guest, :class_name => "User"
  belongs_to :reservation
end
