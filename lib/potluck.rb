class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = {}
  end

 def add_dish(new_dish)
   @dishes[new_dish.category] = new_dish.name
 end

 def get_all_from_category(category)
   @dishes[category]
 end

end
