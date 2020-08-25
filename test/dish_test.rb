require './lib/dish'
require 'minitest/autorun'
require 'minitest/pride'

class DishTest < MiniTest::Test
  def setup
    dish = Dish.new("Couscous Salad", :appetizer)
  end

  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_has_attributes
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
    assert_equal :appetizer, dish.course
  end

  



end
