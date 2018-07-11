require "pry"

class Dish
  attr_reader :name, :category
  def initialize(name, category)
    @name = name
    @category = category
    # will probably need a hash
    # dishes = {:appetizer, "Couscous Salad"}

  end

  # will need a method that calls the dishes name
  def name
    @name
  end

  def category
    @category
  end


end
