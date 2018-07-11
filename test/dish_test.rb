require './lib/dish.rb'
require 'minitest/autorun'
require 'minitest/pride'

class DishTest < MiniTest::Test

  def test_does_it_exist
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end

  def test_it_has_a_name
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
  end



end
