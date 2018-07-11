require "minitest/autorun"
require "minitest/pride"
require "./lib/dish.rb"

class DishTest < Minitest::Test

  def test_if_it_exist
    dish = Dish.new("","")

    assert_instance_of Dish, dish
  end

  def test_if_dish_name_correct
    dish = Dish.new("Couscous Salad", :appetizer)
    expected ="Couscous Salad"
    actual = dish.name
    # binding.pry
    assert_equal expected, actual

    expected = :appetizer
    actual = dish.category
  end

end
