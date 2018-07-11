require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test 

  def test_it_exists
    dish = Dish.new(name, :appetizer) 
    
    assert_instance_of Dish, dish 
  end 
  
  def test_it_has_a_dish_name
    dish = Dish.new("Couscous Salad", :appetizer)
    
    assert_equal "Couscous Salad", dish.name 
  end 
  
  def test_it_has_a_dish_category
    dish = Dish.new("Couscous Salad", :appetizer)
    
    assert_equal :appetizer, dish.category 
  end 

end 