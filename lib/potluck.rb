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
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    menu = {}
    @dishes.each do |item|
      menu[(item.category.to_s + "s").to_sym] = []
    end
    @dishes.chunk do |item|
      item.category
    end.each do |category, item|
      item.each do |food|
        menu[(category.to_s + "s").to_sym] << food.name
      end
    end
    menu
  end

  def ratio(category)
    menu_length = @dishes.length
    category_length = menu[category].length
    (category_length / menu_length.round(1)) * 100
  end
end
