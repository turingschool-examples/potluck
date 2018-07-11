require 'minitest/autorun'
require 'minitest/pride'
#require './lib/dish.rb'
require './lib/potluck'
require 'pry'

class DishTest < Minitest::Test

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def test_it_starts_with_an_empty_array_of_dishes
    potluck = Potluck.new("7-13-18")
    assert_equal [], potluck.dishes
  end

  def test_it_stores_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes
    assert_equal 2, potluck.dishes.length
  end

end
