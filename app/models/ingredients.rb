class Ingredients

  attr_reader :name, :calories
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, calories)
    @name = name
    @calories = calories
    self.class.all << self
  end

  def self.find_all_by_name(string)
    self.all.select do |ingredient|
      ingredient.name.include?(string)
    end
  end

  def dessert
    ing_des = Dessert.all.select do |dessert|
      dessert.ingredients.include?(self)
    end
    ing_des.sample
  end

  def bakery
    self.dessert.bakery
  end

end
