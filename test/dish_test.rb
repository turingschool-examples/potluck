require 'minitest/autorun'
require 'minitest/emoji'
require './lib/dish'

class DishTest < Minitest::Test

  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_it_takes_a_dish_name
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal "Couscous Salad", dish.name
  end

  def test_it_takes_a_catagory
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal :appetizer, dish.category
  end
end
