class Listing < ActiveRecord::Base
  # Listing is created by User as host
  belongs_to :host, class_name: 'User'

  # Listing belongs_to neighborhood(location, in a city)
  belongs_to :neighborhood

  # Listing has many guests(users, through reservations)
  has_many :guests, through: :reservations, class_name: 'User'

  # Listing has many reservations(created by User as guest)
  has_many :reservations

  # Listing has_many reviews specific to each reservation
  has_many :reviews, through: :reservations
end
