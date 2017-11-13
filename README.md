

# Flatiron-bnb: Associations

We're going to build Airbnb. Really. We're going to take this in steps. First let's work on our model associations and write migrations. This will be challenging, but doable. Take it slow and work together. Follow the model specs.

<em>Before anything</em>, note that when you generate models, controllers, etc, be sure to include this option, so that it skips tests (which we already have): `--no-test-framework`

## Where to Begin?

First think about the relations between all of the objects. Let's work through Users and Listings, and from there you should know some cool ActiveRecord tricks to get started on the rest.

We have a `user` object but a listing belongs to a specific type of user: a host. And the reservation (aka a trip) and a review both belong to a specific type of user: a guest. But we don't want to make two tables for a host and a guest. One way to do this is to create an association where, for example, a listing belongs to a host:

```ruby
belongs_to :host
```

ActiveRecord's `belongs_to` method is going to look for a table named "host", but that doesn't exist. Instead, we need to tell ActiveRecord which table host is referring to:

```ruby
belongs_to :host, :class_name => "User"
```

The listings table is instead going to have a column for the foreign key called `host_id`.

Then on the User class, when we're creating a relationship with listings, where a user `has_many` listings, we need to specify which foreign key to look for on the listings table, otherwise, ActiveRecord is going to default to looking for a `user_id` when we named it `host_id`:

```ruby
has_many :listings, :foreign_key => 'host_id'
```

## Resources

[Foreign key and Class Name AR class methods](http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/flatiron-bnb-associations' title='Flatiron-bnb: Associations'>Flatiron-bnb: Associations</a> on Learn.co and start learning to code for free.</p>

## Notes
I'm starting with nothing except tests.  

Expected Models:

[]City:
[]Listing:
[]Neighborhood:
[]Reservation:
[]Review:
[]User:


Details:
City:
  name
  has_many neighborhoods
  has_many listings, through: neighborhoods


Listing:
  address: '6 Maple Street',
  listing_type: "shared room",
  title: "Shared room in apartment",
  description: "share a room with me because I'm poor",
  price: 15.00,
  neighborhood: green_point,
  host: katie

  has a title
  has a description
  has an address
  has a listing type
  has a price
  belongs_to neighborhood
  belongs_to host
  has_many reservations
  has_many reviews, through: reservations
  has_many guests, through: listings(?)



Neighborhood:
  name
  belongs_to city
  has_many listings
  
Reservation:
  checkin: '2014-04-25',
  checkout: '2014-04-30',
  listing: listing,
  guest: logan


Review:
  description: "Meh, the host I shared a room with snored.",
  rating: 3,
  guest: logan,
  reservation: reservation

User:
  name
  as host, has many listings
    has_many reservations through listings
    as guest,
      has review  (?)
      has_many trips
      has_many reviews





rails g
