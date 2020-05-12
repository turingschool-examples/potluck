require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_it_is_an_empty_array
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_it_exists_couscous
    couscous_salad = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, couscous_salad
  end

  def test_it_exists_cocktail
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    assert_instance_of Dish, cocktail_meatballs
  end

  def test_it_can_add_couscous_salad
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
    potluck.add_dish(couscous_salad)

    assert_equal [couscous_salad], potluck.dishes
  end

  def test_it_can_add_cocktail_meatballs
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
    potluck.add_dish(cocktail_meatballs)

    assert_equal [cocktail_meatballs], potluck.dishes
  end

  def test_it_has_a_dishes_length_of_2
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    assert_equal 2, potluck.dishes.length
  end
end
