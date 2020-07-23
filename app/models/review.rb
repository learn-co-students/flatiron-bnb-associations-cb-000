class Review < ActiveRecord::Base
  # Review belongs_to User as a guest
  belongs_to :guest, class_name: 'User'

  # Review belongs_to specific reservation
  belongs_to :reservation
end
