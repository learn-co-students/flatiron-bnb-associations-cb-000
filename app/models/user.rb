class User < ActiveRecord::Base
  #as Guest
  has_many :reservations, foreign_key: 'guest_id', as: :trips
  has_many :reviews

  #as Host
  has_many :listings, foreign_key: 'host_id'
  has_many :reservations, through: :listings
end
