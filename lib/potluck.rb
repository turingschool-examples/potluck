require './lib/dish'

class Potluck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @menu_hash = {
      :appetizer => [],
      :entres => [],
      :desserts => []
    }
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
    @dishes.each do |dish|
      @menu_hash[dish.category] << dish.name
    end
    @menu_hash
  end

  def ratio(category)
    total_dishes = @dishes.length.to_f
    category_dishes = @menu_hash[category].length
    category_dishes/total_dishes * 100
  end
end
