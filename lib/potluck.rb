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
end