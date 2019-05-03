require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class CardTest < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
    @salad = Dish.new("Couscous Salad", :appetizer)
    @meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_dishes_starts_empty
    assert_empty @potluck.dishes
  end

  def test_dishes_get_added
    @potluck.add_dish(@salad)
    assert_equal 1, @potluck.dishes.length
    @potluck.add_dish(@meatballs)
    assert_equal 2, @potluck.dishes.length
    assert_equal @salad, @potluck.dishes[0]
    assert_equal @meatballs, @potluck.dishes[1]
  end
end
