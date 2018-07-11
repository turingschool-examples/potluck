require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test 

  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end
  
  def test_attributes 
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
    assert_equal [], potluck.dishes
  end
  
  def test_adds_dish 
    potluck = Potluck.new("7-13-18")
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal [dish], potluck.add_dish(dish)
  end
  
  
end 