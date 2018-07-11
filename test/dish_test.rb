require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def test_it_exists

    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_for_new_dish

    dish = Dish.new("Couscous Salad", :appetizer)

    expected = "Couscous Salad"
    actual = dish.name

    assert_equal expected, actual
  end

  def test_for_dish_category
    dish = Dish.new("Couscous Salad", :appetizer)

    expected = :appetizer
    actual = dish.category

    assert_equal expected, actual
  end

end
