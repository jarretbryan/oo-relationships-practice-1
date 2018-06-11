class Trip

  @@all = []

  attr_reader :listing, :guest

  def self.all
    @@all
  end

  def initialize (listing, guest)
    @listing = listing
    @guest = guest
    self.class.all << self
  end

end
