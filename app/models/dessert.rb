class Dessert

  attr_reader :name, :calories, :ingredients, :bakery
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, bakery, ingredients_arr)
    @name = name
    @bakery = bakery
    @ingredients = ingredients_arr
    self.class.all << self
  end



end
