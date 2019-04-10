class User < ApplicationRecord
  has_many :listings, :foreign_key => "host_id"
  has_many :reservations, through: :listings, :foreign_key => "host_id"
  has_many :trips, :source => :reservations, :foreign_key => "guest_id", :class_name => "Reservation"
  has_many :reviews, :foreign_key => "guest_id"
end
