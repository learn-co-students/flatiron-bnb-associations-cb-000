class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, through: :neighborhoods
end

=begin
rails g model Review description:text rating:integer guest:belongs_to reservation:belongs_to --no-test-framework
=end
