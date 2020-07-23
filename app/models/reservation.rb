class Reservation < ActiveRecord::Base
    belongs_to :listing
    belongs_to :guest, class_name: "User"
    has_one :host, through: :listing, class_name: "User"
    has_one :review
end
