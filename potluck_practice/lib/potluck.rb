require './lib/dish'
require 'pry'

class Potluck
  attr_accessor :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)

    @dishes.find_all do |dish|
      dish.category == category
    end
  end
end
