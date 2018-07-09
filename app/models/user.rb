class User < ActiveRecord::Base
  #as Guest
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'
  has_many :reviews, foreign_key: 'guest_id'

  #as Host
  has_many :listings, class_name: 'Reservation', foreign_key: 'host_id'
  has_many :reservations, through: :listings#, foreign_key: 'host_id'

  def trips
    self.reservations
  end
end
