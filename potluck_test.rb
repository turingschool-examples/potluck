require 'minitest/autorun'
require 'minitest/pride'
require './dish'
require './potluck'
require 'pry'

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck , potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18" , potluck.date
  end

  def test_it_has_an_empty_array_of_dishes
    potluck = Potluck.new("7-13-18")
    assert_equal [ ], potluck.dishes
  end

  def test_you_can_add_a_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :appetizer)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    assert_equal  [couscous_salad,cocktail_meatballs], potluck.dishes
  end

  def test_it_can_get_all_from_category
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :appetizer)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    actual = potluck.dishes.get_all_from_category(:appetizer)
    expected = [couscous_salad, summer_pizza, cocktail_meatballs]
    assert_equal expected , actual
  end




end
