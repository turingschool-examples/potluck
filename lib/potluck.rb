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
    dishes.length
  end

  def get_all_from_category(category)
    dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    categories = []
    return_menu = {}
    dishes.each do |dish|
      if !(categories.include?(dish.category))
        categories << dish.category
      end
    end

    categories.each do |category|
      return_menu[category] = dishes.find_all { |dish| dish.category == category }
    end

    return return_menu

  end

  def ratio

  end

end
