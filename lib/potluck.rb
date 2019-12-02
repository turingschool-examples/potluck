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
    category_list = []

    @dishes.each do |dish|
      if dish.category == category
        category_list << dish
      end
    end 
    category_list
  end
end
