nyc = City.create(name: "New York")
City.create(name: "Chicago")
City.create(name: "Boston")

dk = User.create(name: "Derek")
urbi = User.create(name: "Urbi")

hh = Neighborhood.create(name: "Hamilton Heights", city: nyc)
Neighborhood.create(name: "Chelsea", city: nyc)

l = Listing.create(title: "HamHouse", description: "Apt in HH", host: dk, neighborhood: hh)

res = Reservation.create(listing: l, guest: urbi)
Review.create(rating: 3, guest: urbi, reservation: res)
