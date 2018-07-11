class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

 def get_all_from_category(category)
   @dishes.find_all do |dish|
     if dish.category == category
       dish
     end
   end
 end

 def menu
  menu_array = {appetizers: [], entres: [], desserts: []}
  @dishes.each do |dish|
    if dish.category == :appetizer
      menu_array[:appetizers] << dish.name
      menu_array[:appetizers] = menu_array[:appetizers].sort
    elsif dish.category == :entre
      menu_array[:entres] << dish.name
      menu_array[:entres] = menu_array[:entres].sort
    else
      menu_array[:desserts] << dish.name
      menu_array[:desserts] = menu_array[:desserts].sort
    end
  end
  menu_array
end

  def ratio(category)
    total_items = menu.values.flatten.count
    category_items = menu[category].count
    category_items.to_f / total_items
  end
end
