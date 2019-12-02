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

end