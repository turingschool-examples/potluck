class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end
  
  def add_dish(dish)
    @dishes << dish
  end
  
  def get_all_from_category(dish_category)
    category = []
    @dishes.map do |dish|
      category << dish if dish.category == dish_category
    end
    return category
  end
  
  def menu
    full_menu = {
      appetizers: [],
      entres: [],
      desserts: []
    }
    sorted = @dishes.sort_by {|dish| dish.name}
    sorted.each do |dish|
      if dish.category == :appetizer
        full_menu[:appetizers] << dish.name
      elsif dish.category == :entre
        full_menu[:entres] << dish.name
      elsif dish.category == :dessert
        full_menu[:desserts] << dish.name
      end
    end
    full_menu
  end
  
  def ratio(course)
    course_num = @dishes.select {|dish| dish.category == course}
    (course_num.size.to_f / @dishes.size * 100).round(1)
  end
end