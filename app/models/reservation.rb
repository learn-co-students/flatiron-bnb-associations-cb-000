class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: "User"
  belongs_to :trip, class_name: "Reservation"
  belongs_to :listing
  has_one :review, foreign_key: "reservation_id"
end
