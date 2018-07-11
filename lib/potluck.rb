require './lib/dish'

class Potluck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dishes_by_category = @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    menu_hash = Hash.new
    @dishes.each do |dish|
      menu_hash[dish.category] = []
    end
    @dishes.each do |dish|
      menu_hash[dish.category] << dish.name
    end
    menu_hash
  end
end
