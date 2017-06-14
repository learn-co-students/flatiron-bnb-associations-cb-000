json.extract! reservation, :id, :checking, :checkout, :guest_id, :listing_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
