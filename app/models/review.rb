class Review < ActiveRecord::Base
  belongs_to :guest, :class_name => "User"
  belongs_to :reservation, :class_name => "Reservation"
end
