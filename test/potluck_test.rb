require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'


class PotluckTest < Minitest::Test

def test_it_has_date
  potluck = Potluck.new("7-13-18")
  assert_equal ("7-13-18"), potluck.date
end

def test_it_has_dishes
  potluck = Potluck.new("7-13-18")
  assert_equal [], potluck.dishes
end

def test_it_can_add_dishes
 
  potluck = Potluck.new("7-13-18")
  couscous_salad = Dish.new("Couscous Salad", :appetizer)
#   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  #take arguments from the dish class and pass em into add_dish parameters
  assert_instance_of couscous_salad, potluck.add_dish(couscous_salad)
  assert_equal :cocktail_meatballs, potluck.add_dish(:cocktail_meatballs)
end

end

couscous_salad = Dish.new("Couscous Salad", :appetizer)
cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)