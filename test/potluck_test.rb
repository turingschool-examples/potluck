require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class CardTest < Minitest::Test
  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
    @potluck = Potluck.new("7-13-18")
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_dishes_starts_empty
    assert_empty @potluck.dishes
  end
end
