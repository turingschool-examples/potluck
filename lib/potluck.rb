require 'pry'
require './lib/dish'

class Potluck

  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    result = []
    @dishes.each do |dish|
      if dish.category == category
        result << dish
      else
        dish
      end
    end
    return result
  end

  def menu
    menu = {:appetizers => [],
            :entres => [],
            :desserts => []}
    @dishes.each do |dish|
      if dish.category == :appetizer
        menu[:appetizers] << dish.name
      elsif
        dish.category == :entre
        menu[:entres] << dish.name
      else
        dish.category == :dessery
        menu[:desserts] << dish.name
      end
    end
    menu[:appetizers].sort!
    menu[:entres].sort!
    menu[:desserts].sort!
    return menu
  end


    # @dishes.each do |dish|
    #   binding.pry
    #   menu[dish.category].unshift(dish.name)
    # end
    # return menu

end
