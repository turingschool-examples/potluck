require 'minitest/autorun'
require 'minitest/pride'
require './dish'
require 'pry'

class DishTest < Minitest::Test
  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish , dish
  end

  def test_it_has_name
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad" , dish.name
  end

  def test_it_has_a_category
    binding.pry
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal :appetizer , dish.category

  end


end
