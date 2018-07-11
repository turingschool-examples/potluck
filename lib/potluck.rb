require './lib/dish.rb'

class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @category_array = []
    #couscous_salad = Dish.new("Couscous Salad",:appetizer)
    #cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

  end

  def add_dish(dish)
    dishes << dish
    return dish
  end

  def get_all_from_category(category)
    #category_array = []

    dishes.collect { |dish|
      if dish.category == category
        category_array << dish
      end
      end
      }
        return @category_array
    end
  end
#couscous_salad = Dish.new("Couscous Salad",:appetizer)
#cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
