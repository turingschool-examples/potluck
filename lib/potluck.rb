require 'pry'
require './lib/dish'

class Potluck
  attr_reader :dishes, :add_dish

  def initialize(date)
    @date = date
    @dishes = []
    @category = {appetizer: "", entre: "", dessert: ""}
  end

  def date
    @date
  end

  def add_dish(name)
    @dishes << Dish.new(name, category)
    @dishes.add_to_category
  end

  def dishes
    @dishes
  end

  def add_to_category
    dishes.each do |name|
      @category[category] << dish.name
    end
    dish.category
  end

  def get_all_from_category(:category)
    @category[:category]
  end

end
