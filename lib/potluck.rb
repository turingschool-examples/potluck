class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish_instance)
    @dishes << dish_instance
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end






end
