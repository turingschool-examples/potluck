# frozen_string_literal: true

require './lib/dish'

# Potluck Class
class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @menu = {
      appetizer: [],
      entree: [],
      dessert: []
    }
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    @dishes.each do |dish|
      @menu[dish.category] << dish.name
    end
    @menu
  end
end
