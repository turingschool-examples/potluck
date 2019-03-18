require './lib/dish'

class Potluck
  attr_reader :date,
              :dishes,
              :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = {}
  end

  def add_dish(dish)
    menu_adder(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def menu_adder(dish)
    @menu[dish.category] = dish.name #need to make alphabetical though
  end
end
