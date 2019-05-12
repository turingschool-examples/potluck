require './lib/dish'
require './minitest/autorun'
require './minitest/pride'

class DishTest < Minitest::Test
  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

  def test_it_has_attributes
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous salad", dish.name
    assert_equal "Couscous salad", dish.name
  end
end
