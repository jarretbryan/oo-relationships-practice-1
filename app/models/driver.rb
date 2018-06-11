class Driver

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      driver.total_distance > distance
    end
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    self.rides.map do |ride|
      ride.passenger
    end.uniq
  end

  def total_distance
    # distance_arr = self.rides.map do |ride|
    #   ride.distance
    # end
    # distance_arr.inject {|sum, distance| sum + distance}
    counter = 0
    self.rides.each do |ride|
      counter += ride.distance
    end
    counter
  end

end
