require 'pry'
require './lib/dish'

class Potluck
  attr_reader :dishes, :add_dish

  def initialize(date)
    @date = date
    @dishes = []

  end

  def date
    @date
  end

  def add_dish(name)
    @dishes << Dish.new(name, category)
  end

  def dishes
    @dishes
  end

end
