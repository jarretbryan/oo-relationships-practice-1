class Guest

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.find_all_by_name(name)
    self.all.select do |guests|
      guests.name == name
    end
  end

  def self.pro_traveller
    self.all.find do |guests|
      guests.trips.count > 1
    end
  end

  def trips
    Trip.all.select do |trips|
      trips.guest == self
    end
  end

  def trip_count
    self.trips.count
  end


    def listings
      self.trips.all.map do |trips|
        trips.listing
      end
    end

end
