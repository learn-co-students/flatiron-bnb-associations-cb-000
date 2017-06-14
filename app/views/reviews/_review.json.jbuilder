json.extract! review, :id, :guest_id, :rating, :reservation_id, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
