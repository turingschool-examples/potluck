require "./lib/dish"

class Potluck 
    
    attr_reader :date,
                :dishes,
                :new_dish

  def initialize(date)
    @date = date
    @dishes = []
    @new_dish = new_dish
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end
end

couscous_salad = Dish.new("Couscous Salad", :appetizer)
cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

new_dish = [couscous_salad, cocktail_meatballs]