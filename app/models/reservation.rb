class Reservation < ActiveRecord::Base
  # Reservation belongs_to User as a guest
  belongs_to :guest, class_name: 'User'

  # Reservation belongs_to a specific listing
  belongs_to :listing

  # Each Reservation has a specific review(from user/guest)
  has_one :review
end
