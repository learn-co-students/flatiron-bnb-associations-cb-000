class City < ActiveRecord::Base
  has_many :listings, through: :neighborhoods
  has_many :neighborhoods
end
