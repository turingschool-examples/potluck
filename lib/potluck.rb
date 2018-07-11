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

  def get_all_from_category(type)
    @dishes.find_all do |dish|
      dish.category == type
    end
  end

  def menu
    hash = {}
    @dishes.each do |dish|
      hash << dish.category
    end
    hash
  end
end
