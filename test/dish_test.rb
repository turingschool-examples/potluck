require './lib/dish.rb'
require 'minitest/pride'
require 'minitest/autorun'

class DishTest < Minitest::Test

  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  def test_it_exists
    assert_instance_of Dish, @dish
  end

  def test_it_has_a_name
    expected = "Couscous Salad"
    result = @dish.name

    assert_equal expected, result
  end

  def test_it_has_a_category
    expected = :appetizer
    result = @dish.category

    assert_equal expected, result
  end

end
