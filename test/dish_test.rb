require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def test_basic_dish
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
    assert_equal :appetizer, dish.category
  end

  def test_name
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
  end

  def test_category
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal :appetizer, dish.category
  end

  def test_4
  end

end
