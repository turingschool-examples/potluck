require './lib/dish.rb'
require 'pry'

class Potluck

  attr_accessor :date,
                :dishes,
                :name,
                :category,
                :dishes_by_category

  def initialize(date)
    @date = date
    @dish = Dish.new(name, category)
    @name = name
    @category = category
    @dishes = []
    @dishes_by_category = Hash.new([])
  end

  def add_dish(dish)
    @dishes << dish

    if @dishes_by_category[dish.category]
      @dishes_by_category[dish.category] << dish
    else
      @dishes_by_category[dish.category] = dish
    end
  end

  def get_all_from_category(category)
    @dishes_by_category[category]
  end

end
