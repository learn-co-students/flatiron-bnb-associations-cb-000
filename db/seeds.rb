host =  User.create(name: "Katie")

city = City.create(name: 'NYC')
neighborhood = Neighborhood.create(name: 'Green Point', city: city)

listing = Listing.create(
  address: '6 Maple Street',
  listing_type: "shared room",
  title: "Shared room in apartment",
  description: "share a room with me because I'm poor",
  price: 15.00,
  neighborhood: neighborhood,
  host: host
)

guest = User.create(name: "Logan")

reservation = Reservation.create(
  checkin: '2014-04-25',
  checkout: '2014-04-30',
  listing: listing,
  guest: guest
)

review = Review.create(
  description: "Meh, the host I shared a room with snored.",
  rating: 3,
  guest: guest,
  reservation: reservation
)

p "guest.trips Successful" if guest.trips.include?(reservation)

p "guest.reviews Successful" if guest.reviews.include?(review)
