require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def setup
    @potluck1 = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck1
  end

  def test_it_has_a_date_and_starts_with_empty_dishes
    assert_equal "7-13-18", @potluck1.date
    assert_equal [], @potluck1.dishes
  end

  def test_we_can_add_new_dishes
    @potluck1.add_dish(@couscous_salad)
    assert_equal "Couscous Salad", @potluck1.dishes[0].name

    @potluck1.add_dish(@cocktail_meatballs)
    assert_equal "Cocktail Meatballs", @potluck1.dishes[1].name

    assert_equal [@couscous_salad, @cocktail_meatballs], @potluck1.dishes
    assert_equal 2, @potluck1.dishes.length
  end
end
