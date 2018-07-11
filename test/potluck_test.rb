require 'minitest/autorun'
require 'minitest/pride'
require './lib/potluck'
require './lib/dish'

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_it_starts_with_no_dishes
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_can_add_dishes
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    actual = potluck.dishes
    expected = [couscous_salad, cocktail_meatballs]

    assert_equal expected, actual
    assert_equal 2, potluck.dishes.length
  end

end
