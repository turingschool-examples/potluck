require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def test_dish_can_be_created
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

end
