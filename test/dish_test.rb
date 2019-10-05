require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'


class DishTest < Minitest::Test

  def test_it_exists
    dish = Dish.new("Couscous salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_name_method_returns_dish_name
    dish = Dish.new("Couscous salad", :appetizer)
    assert_equal "Couscous salad", dish.name
  end

  def test_category_method_returns_category
    dish = Dish.new("Couscous salad", :appetizer)
    assert_equal :appetizer, dish.category
  end
end
