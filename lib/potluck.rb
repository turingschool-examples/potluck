class Potluck
  attr_reader :dishes, :date
  def initialize(date)
    @dishes = []
    @date = date
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dishes_array = []

    @dishes.each do |dish|
      if dish.category == category
        dishes_array << dish
      end
    end

    dishes_array
  end
end
