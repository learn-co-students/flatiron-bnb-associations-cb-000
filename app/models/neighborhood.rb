class Neighborhood < ActiveRecord::Base
  # Neighborhood belongs_to a specific city
  belongs_to :city

  # Neighborhood has_many specific listings
  has_many :listings
end
