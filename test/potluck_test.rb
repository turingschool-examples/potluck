require 'minitest/autorun'
require 'minitest/pride'
require './lib/potluck'
require './lib/dish'

class PotLuckTest < Minitest::Test

  def test_it_exists
    potluck = PotLuck.new("7-11-2018")
    assert_instance_of PotLuck, potluck
  end

  def test_for_date
    potluck = PotLuck.new("7-11-2018")

    expected = "7-11-2018"
    actual = potluck.date

    assert_equal expected, actual
  end

  def test_for_empty_array_dishes
    potluck = PotLuck.new("7-11-2018")

    expected = []
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_add_to_dishes
    potluck = PotLuck.new("7-11-2018")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)

    expected = couscous_salad
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_count_types_of_dishes
    potluck = PotLuck.new("7-11-2018")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    meatball_salad = Dish.new("Meatball Salad", :entree)

    expected = @appetizer.count = 1
    actual = potluck.count_types_of_dishes

    assert_equal expected, actual
  end

  def get_all_from_category
    potluck = PotLuck.new("7-11-2018")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    meatball_salad = Dish.new("Meatball Salad", :entree)

    expected = 1
    actual = potluck.get_all_from_category(:appetizer)

    assert_equal expected, actual
  end
end
