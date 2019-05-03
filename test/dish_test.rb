require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class CardTest < Minitest::Test
  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  def test_it_exists
    assert_instance_of Dish, @dish
  end

  def test_name
    assert_equal "Couscous Salad", @dish.name
  end

  def test_appetizer
    assert_equal :appetizer, @dish.category
  end
end
