class User < ActiveRecord::Base
  has_many :listings, :foreign_key => "host_id"
  has_many :reviews, :foreign_key => "guest_id"
  has_many :reservations, through: :listings
  #want user.trips
  #same as user.reservations but we don't use user_id we use guest_id
  has_many :trips, :class_name => "Reservation", :foreign_key => "guest_id"
end
