require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/dish'

class DishTestTest < MiniTest::Test

  def test_it_exists
    dish = Dish.new("Lasagna", :main_dish)
    assert_instance_of Dish, dish
  end
  
  def test_it_has_a_name 
    dish = Dish.new("Lasagna", :main_dish)
    assert_equal "Lasagna", dish.name
  end

  def test_it_has_a_category
    dish = Dish.new("Lasagna", :main_dish)
    assert_equal :main_dish, dish.category
  end
end