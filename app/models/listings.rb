class Listing

  attr_reader :city, :address

  @@all = []

  def self.all
    @@all
  end

  def initialize(city, address)
    @city = city
    @address = address
    self.class.all << self
  end

  def self.find_all_by_city(city)
    self.all.select do |listings|
      city == listings.city
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      self.all.count(listing)
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end.uniq
  end

  def trip_count
    self.trips.count
  end

end
