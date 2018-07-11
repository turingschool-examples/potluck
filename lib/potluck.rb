class Potluck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(food_type)
    all = @dishes.find_all do |food|
      food.category == food_type
    end
    return all
  end
end
