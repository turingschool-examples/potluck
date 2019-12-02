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
    category_array = []
    @dishes.each do |dish|
      if dish.category == category
        category_array << dish
      end
    end
    category_array
  end

  def menu
    menu_hash = {:appetizers=>[],:entres=>[], :desserts=>[]}
    dishes.each do |dish|
      if dish.category == :appetizer
        (menu_hash[:appetizers] ||= []) << dish.name
      elsif dish.category == :entre
        (menu_hash[:entres] ||= []) << dish.name
      elsif dish.category == :dessert
        (menu_hash[:desserts] ||= []) << dish.name
      end
    end
    menu_hash[:appetizers] = menu_hash[:appetizers].sort
    menu_hash[:entres] = menu_hash[:entres].sort
    menu_hash[:desserts] = menu_hash[:desserts].sort
    menu_hash
  end

  def ratio(category)
    percent = (menu[category].length.to_f/ dishes.length.to_f) * 100
  end
end
