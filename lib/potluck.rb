class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def get_all_from_category(chosen_category)
    returned_array = []
    @dishes.each do |dish|
      if dish.category = chosen_category
        returned_array << dish
      end
    end
  end
end
