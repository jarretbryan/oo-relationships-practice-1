class Passenger

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.premium_members
    self.all.select do |passengers|
      passengers.total_distance > 100
    end
  end

  def rides
    Ride.all.select do |rides|
      rides.passenger == self
    end
  end

  def drivers
    self.rides.map do |rides|
      rides.driver
    end.uniq
  end

  def total_distance
    counter = 0
    self.rides.each do |ride|
      counter += ride.distance
    end
    counter
  end


end
