require 'pry'

class Dish
  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
  end

  def name
    @name
  end

  def category
    @category
  end

end
