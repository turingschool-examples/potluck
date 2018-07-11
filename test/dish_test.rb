require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/dish"

class DishTest < Minitest::Test

  def test_it_exists
    dish = Dish.new
    assert_instance_of Dish, dish 
  end
end
