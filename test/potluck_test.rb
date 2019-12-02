require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/potluck'
require_relative '../lib/dish'

class PotluckTest < MiniTest::Test 

  def test_it_exists
    potluck = Potluck.new('7-13-18')
    assert_instance_of Potluck, potluck
  end
  
  def  test_it_has_a_date
    potluck = Potluck.new('7-13-18')
    assert_equal '7-13-18', potluck.date
  end
  
  def test_it_has_an_empty_list_of_dishes
    potluck = Potluck.new('7-13-18')
    assert_equal [], potluck.dishes
  end
  
  def test_it_can_add_a_dish
    potluck = Potluck.new('7-13-18')
    dish1 = Dish.new("Couscous Salad", :appetizer)
    dish2 = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(dish1)
    assert_equal [dish1], potluck.dishes
    potluck.add_dish(dish2)
    assert_equal [dish1, dish2], potluck.dishes
  end

end