require './lib/dish.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DishTest < Minitest::Test

  def test_existence
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_attributes
    dish = Dish.new("Couscous Salad", :appetizer)
    result = dish.name
    expected = "Couscous Salad"
    assert_equal expected, result
    result = dish.category
    expected = :appetizer
    assert_equal expected, result
  end
  
end
