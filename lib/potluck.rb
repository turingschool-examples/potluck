require "pry"
require "./lib/dish.rb"


class Potluck
  attr_reader :date,
              :dishes


  def initialize (date)
     @date = date
     @dishes = []
     #when added it makes my tests fail.  
     # @get_all_from_category = Dish.new(category(0))

  end

#trying to get this to shovel dishes into the dishes array
  def add_dish(dish)
    dishes << dish_name
  end

end
