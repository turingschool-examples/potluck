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

  def ratio(category)
    category_split = @dishes.group_by(&:category)

    category_count = category_split[category].count
    total_count = @dishes.count

    (category_count.to_f / total_count.to_f) * 100
  end
end
