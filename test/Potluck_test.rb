require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/potluck.rb'
require './lib/dish.rb'

class PotluckTest < Minitest::Test

  def test_potluck_exists
    potluck = Potluck.new
    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def test_it_can_there_can_be_dishes
    potluck = Potluck.new("7-13-18")
    assert_equal [], potluck.dishes
  end

  def test_it_can_add_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    potluck.add_dish(couscous_salad)
    assert_instance_of Dish, potluck.dishes[0]
  end

  def test_it_can_hold_more_dishes
   potluck = Potluck.new("7-13-18")
   couscous_salad = Dish.new("Couscous Salad", :appetizer)
   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
   actual = potluck.dishes
   expected = [couscous_salad, cocktail_meatballs]
   assert_equal expected, actual
  end


end
