class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def length
    @dishes.length
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    categories = []
    return_menu = {}
    @dishes.each do |dish|
      if !(categories.include?(dish.category))
        categories << dish.category
      end
    end

    categories.each do |category|
      category_items = get_all_from_category(category)
      category_items = category_items.sort_by{|item| item.name}
      return_menu[category] = category_items
    end

    return return_menu

  end

  def ratio(category)
    return ((menu[category].length.to_f / length) * 100).round(2)
  end

end
