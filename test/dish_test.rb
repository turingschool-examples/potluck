require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require 'pry'

class DishTest < Minitest::Test

  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

end
