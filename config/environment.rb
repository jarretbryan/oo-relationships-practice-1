require 'pry'
require 'bundler/setup'
Bundler.require
require_all 'app'

#airbnb

mark = Guest.new("Mark")
jim = Guest.new("Jim")
lisa = Guest.new("Lisa")
mary = Guest.new("Mary")
jarret = Guest.new("Jarret")

fake_street = Listing.new("Brooklyn", "123 Fake Street")
real_street = Listing.new("Brooklyn", "345 Real Street")
legit_ave = Listing.new("Philly", "678 Legit Avenue")
bogus_ave = Listing.new("Oakland", "1010 Bogues Avenue")

trip_1 = Trip.new(fake_street, jarret)
trip_2 = Trip.new(fake_street, mary)
trip_3 = Trip.new(bogus_ave, lisa)
trip_4 = Trip.new(legit_ave, jim)
trip_5 = Trip.new(real_street,mark)
trip_6 = Trip.new(fake_street, mark)

#lyft

carl = Passenger.new("Carl")
james = Passenger.new("James Baxter")
finn = Passenger.new("Finn the Human")

rey_driver = Driver.new("Rey")
pb_driver = Driver.new("Princess Bubblegum")
marcy = Driver.new("Marceline")

ride_1 = Ride.new(marcy,finn, 80)
ride_2 = Ride.new(marcy,james, 5)
ride_3 = Ride.new(rey_driver, finn, 10)
ride_4 = Ride.new(pb_driver, carl, 20)
ride_5 = Ride.new(marcy,finn, 30)
ride_6 = Ride.new(pb_driver, james, 10)

#bakery
ent = Bakery.new("Entemann's")
mr_bread = Bakery.new("Mr. Bread")
lisa_bread = Bakery.new("Lisa's Bread")
panera = Bakery.new("Panera")
cake_boss = Bakery.new("Cake Boss")

sugar = Ingredients.new("Sugar", 10)
chocolate = Ingredients.new("Chocolate", 50)
choc_springles = Ingredients.new("Chocolate Sprinkles", 30)
dough = Ingredients.new("Dough", 100)
flour = Ingredients.new("Flour", 15)

lbb = Dessert.new("Lisa's Bread's Bread", lisa_bread,[sugar, dough, flour])

ent_cake = Dessert.new("Entman's Cake", ent, [dough, chocolate, choc_springles])

lisa_cake = Dessert.new("Lisa'sBread'sCake", lisa_bread, [dough, chocolate])

panera_bread = Dessert.new("Panera's Bread", panera, [dough, flour] )



#binding.pry
