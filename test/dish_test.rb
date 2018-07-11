require "minitest/autorun"
require "autorun/pride"
require "./lib/dish.rb"

class DishTest < Minitest::Test

  def test_it_exists
  dish = Dish.new("Couscous Salad", :appetizer)
  assert_instance_of Dish, dish
  end

  def test_it_has_name
  dish = Dish.new("Couscous Salad", :appetizer)

  assert_equal "Couscous Salad", dish.name
  end

  def test_it_has_category
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal :appetizer, dish.category
  end

end
