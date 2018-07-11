require "pry"
require "./lib/dish"

class Potluck
  attr_reader :date, :dishes
  def initialize(date = "0-0-0")
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category_dishes = @dishes.map do |dish|
      if dish.category == category
        dish
      end
    end
    category_dishes.compact
  end

  def menu
    hash = Hash.new{0}
    x = @dishes.map do |dish|
      dish.category
    end

    x.map do |category|
      category_dishes = @dishes.map do |dish|
        if dish.category == category
          dish.name
        end
      end
      category_dishes.compact
      hash[category] = (category_dishes.compact).sort
    end
    hash
  end

  def ratio(category)
    type = (get_all_from_category(category).length).to_f
    total = (@dishes.length).to_f

    (type / total) * 100
  end

end
