require "./lib/dish"

class Potluck

  attr_accessor :date, :appetizer

  def initialize
    @date = date
    @appetizer = appetizer
    @dishes = []
  end

  def add_dish
    new_dish = Dish.new
    dish_1 = new_dish.dishes[:appetizer]
      # @dishes << new_dish.dish(dish_1)[:appetizer]
      # @dishes << new_dish.dish(dish_1)[:entre]
    dish_1
  end

  # def add_dish_two
  #   new_dish = Dish.new(name)
  #   dish_2 = new_dish.dish(name)[:entre]
  #   dish_2
  # end

end
