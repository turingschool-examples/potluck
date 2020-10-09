class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @dishes = []
    @date = date
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish if category == dish.category
    end
  end

end
