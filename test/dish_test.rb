require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test
  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

  def test_it_has_a_name
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
  end

  def test_it_has_a_different_name
    dish = Dish.new("Caesar Salad", :appetizer)

    assert_equal "Caesar Salad", dish.name
  end

  def test_it_has_a_category
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal :appetizer, dish.category
  end

  def test_it_has_a_different_name
    dish = Dish.new("Chocolate Chip Cookie", :dessert)

    assert_equal :dessert, dish.category
  end
end
