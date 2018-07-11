require "pry"
require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"
require "./lib/potluck"

class DishTest < Minitest::Test

  def test_if_it_exists
    dish = Dish.new("Conscious Salad", :appetizer)
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    assert_instance_of Dish, dish
  end

end

class PotluckTest < Minitest::Test

  def test_if_it_exists
    potluck = Potluck.new("7-13-18")
  end

end
