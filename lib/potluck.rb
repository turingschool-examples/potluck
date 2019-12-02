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
    dish_per_category = @dishes.select do |dish|
      dish.category == category
    end
    dish_per_category
  end

  def menu 
    menu = {}
    @dishes.each do |dish|
      menu[dish.category] = get_all_from_category(dish.category)
    end
    menu
  end

  def ratio(category)
    @dishes.size.zero? ? 'No dishes yet' : (get_all_from_category(category).size / @dishes.size.to_f)*100.round(1)
  end

end