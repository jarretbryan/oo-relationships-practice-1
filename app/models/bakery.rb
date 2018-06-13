class Bakery

  attr_reader :name, :desserts
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    self.desserts.map do |dessert|
      dessert.ingredients
    end.flatten.uniq
  end

  def total_cal
    self.ingredients.map do |ing|
      ing.calories
    end.inject{|x, y| x+y}
  end

  def shopping_list
    self.ingredients.map do |ing|
      ing.name
    end.join(", ")
  end

  def average_calories
    self.total_cal/self.ingredients.count
  end
end
