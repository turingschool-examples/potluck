require "pry"
require "./lib/dish.rb"


class Potluck
  attr_reader :date,
              :dishes

  def initialize (date)
     @date = date
     @dishes = []

  end

#trying to get this to shovel dishes into the dishes array
  def add_dish(dish)
    dishes << dish_name
  end

  def get_all_from_category
    #will somehow interact with the category from dish class
  end


end
