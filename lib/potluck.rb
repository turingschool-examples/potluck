class Potluck
  attr_reader :dishes, :date
  def initialize(date)
    @dishes = []
    @date = date
  end

  def add_dish(dish)
    @dishes << dish
  end
end
