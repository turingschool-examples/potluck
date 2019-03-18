require 'minitest/autorun'
require 'minitest/pride'
require '../lib/potluck'
require '../lib/dish'
class PotluckTest < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-19")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_it_has_a_date
    assert_equal "7-13-19", @potluck.date
  end

  def test_it_starts_with_no_dishes
    assert_equal 0, @potluck.dishes
  end

  def test_it_can_hold_one_dish
    @potluck.add_dish(@couscous_salad)
    assert_instance_of Dish, @potluck.dishes.first
    assert_equal "Couscous Salad", @potluck.dishes.first.name
    assert_equal 1, @potluck.dishes.length
  end

  def test_it_can_hold_two_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    assert_instance_of Dish, @potluck.dishes.last
    assert_equal "Cocktail Meatballs", @potluck.dishes.last.name
    assert_equal 2, @potluck.dishes.length
  end

end
