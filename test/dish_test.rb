require "pry"
require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"
require "./lib/potluck"

class DishTest < Minitest::Test

  def test_if_it_exists
    dish = Dish.new("Conscious Salad", :appetizer)
    assert_instance_of Dish, dish
  end

end
