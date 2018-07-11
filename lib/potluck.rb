class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @menu_items = Hash.new([0])
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      if dish.category == category
        dish
      end
    end
  end

  def menu
    menu_items = Hash.new(0)
    @dishes.sort_by do |dish|
      menu_items[dish.category] = dish.name
      require "pry"; binding.pry
    end
  end

  def ratio(category)
    dish_category = get_all_from_category(category)
    (dish_category.count.to_f / @dishes.count.to_f).round(4) * 100
  end
end
