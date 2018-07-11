require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"

class DishTest < Minitest::Test

  def test_it_exist
    dish = Dish.new("Couscous Salad", :appetizer)
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)

    assert_instance_of Dish, dish
  end

  
end
