require "./lib/dish"

class Potluck

  attr_accessor :date, :appetizer

  def initialize(date)
    @date = date
    @appetizer = appetizer
    @dishes = []
  end

  def add_dish(name)
    new_dish = Dish.new(name)
    dish_1 = new_dish.dish(name)[:appetizer]
      # @dishes << new_dish.dish(dish_1)[:appetizer]
      # @dishes << new_dish.dish(dish_1)[:entre]
    dish_1

    dish_2 = new_dish.dish(name)[:entre]
    dish_2
    binding.pry
  end

end
