require "pry"
require "./lib/dish.rb"


class Potluck
  attr_reader :date,
              :dishes

  def initialize (date)
     @date = date
     @dishes = []
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def get_all_from_category

  end


end
