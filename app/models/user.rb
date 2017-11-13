class User < ActiveRecord::Base
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings

  has_many :reviews, foreign_key: 'guest_id'

  has_many :trips, class_name: 'Reservation', :foreign_key => 'guest_id'
end

# Then on the User class, when we're creating a relationship with listings,
# where a user has_many listings, we need to specify which foreign key to look
# for on the listings table, otherwise, ActiveRecord is going to default to
#    looking for a user_id when we named it host_id:

#
# Error: User guest and host as host has many reservations through their listing
#
# Error: User guest and host as guest has many trips
