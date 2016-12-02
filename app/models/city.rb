class City < ActiveRecord::Base
  # City can contain several neighborhoods
  has_many :neighborhoods

  # City can contain severa; listings in their neighborhoods
  has_many :listings, :through => :neighborhoods
end
