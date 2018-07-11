require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require "./lib/dish.rb"

class DishTest < Minitest::Test
  def test_dish_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

  def test_name
    dish = Dish.new("Couscous", :appetizer)

    assert_equal "Couscous", dish.name
  end

  def test_category
    dish = Dish.new("Couscous", :appetizer)

    assert_equal :appetizer, dish.category
  end 
end
