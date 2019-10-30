class City < ApplicationRecord
  has_many :neighborhoods, :foreign_key => 'city_id'
  has_many :listings, through: :neighborhoods
end
