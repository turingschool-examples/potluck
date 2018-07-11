require './lib/dish.rb'

class Potluck
  attr_accessor :date, :dishes, :category, :potluck_category

  def initialize(date)
    @date = date
    @dishes = []
    @potluck_category = Dish.new.category
    # Trying to initialize this damn instance variable
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category_type)
    @potluck_category[category_type]
  end
end
