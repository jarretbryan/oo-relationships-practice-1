require 'pry'
require 'bundler/setup'
Bundler.require
require_all 'app'

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

binding.pry
