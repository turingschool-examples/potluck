require './lib/dish'

class Potluck
  attr_reader :date,
              :dishes,
              :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new([])
  end

  def add_dish(dish)
    @dishes << dish
    menu_generator
    @dishes
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def menu_generator
    @menu = Hash.new([])

    @dishes.each do |dish|

      if !@menu.has_key?(dish.category) # add s
        @menu[dish.category] = [] # add s
      end

      @menu[dish.category] << dish.name # add s
    end

    @menu.each_key do |category|
      @menu[category].sort!
    end

  end
end
