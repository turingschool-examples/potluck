class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @dishes = []
    @date = date
  end

  def add_dish(dish)
    @dishes << dish
  end

end
