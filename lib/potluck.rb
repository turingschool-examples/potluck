require "pry"
require "./lib/dish"

class Potluck
  def initialize(date)
    @date = date
    # @dishes = {name => category}
  end


  def date
    @date
  end

  def dishes
    @dishes = []
  end

  def add_dish(dish)
    # add a new instance of dish
    name = dish.name
    category = dish.category
    dish = Dish.new(name, category)
  end

end
