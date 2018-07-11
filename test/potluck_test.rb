require './lib/potluck.rb'
require './lib/dish.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PotluckTest < MiniTest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_it_has_no_dishes_at_the_start
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_it_can_add_a_new_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    potluck.add_dish(couscous_salad)

    assert_equal [couscous_salad], potluck.dishes
  end

  def test_it_can_hold_multiple_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expected = [couscous_salad, cocktail_meatballs]
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_that_it_can_pull_items_by_category
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)

    expected = [couscous_salad, summer_pizza]
    actual = potluck.get_all_from_category(:appetizer)

    assert_equal expected, actual
  end

end
