class User < ActiveRecord::Base
  # User create listings as hosts
  has_many :listings, foreign_key: 'host_id'

  # User create reservation through listings, as guest
  has_many :reservations, through: :listings

  # User has_many trips as a guest through reservations
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'

  # User has_many reviews as a guest
  has_many :reviews, foreign_key: 'guest_id'
end
