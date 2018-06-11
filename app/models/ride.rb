class Ride

  attr_reader :passenger, :driver
  attr_accessor :distance
  @@all = []

  def self.all
    @@all
  end

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    self.class.all << self
  end

  def self.total_distance
    counter = 0
    self.all.each do |ride|
      counter += ride.distance
    end
    counter
  end

  def self.average_distance
    self.total_distance/(self.all.count)
  end
end
