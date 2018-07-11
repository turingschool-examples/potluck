require 'minitest/autorun'
require 'minitest/pride'
require "./lib/potluck"
require './lib/dish'

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_a_potluck_has_a_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_a_potluck_starts_with_no_dishes
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_it_can_add_dishes_to_a_potluck
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    assert_equal [couscous_salad], potluck.dishes

    potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes

    assert_equal 2, potluck.dishes.count
  end

  def test_it_can_get_all_the_information_from_a_dish_category
     potluck = Potluck.new("7-13-18")
     couscous_salad = Dish.new("Couscous Salad", :appetizer)
     summer_pizza = Dish.new("Summer Pizza", :appetizer)
     roast_pork = Dish.new("Roast Pork", :entre)
     cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
     candy_salad = Dish.new("Candy Salad", :dessert)

     potluck.add_dish(couscous_salad)
     potluck.add_dish(summer_pizza)
     potluck.add_dish(roast_pork)
     potluck.add_dish(cocktail_meatballs)
     potluck.add_dish(candy_salad)

     assert_equal [couscous_salad,summer_pizza], potluck.get_all_from_category(:appetizer)
     assert_equal couscous_salad, potluck.get_all_from_category(:appetizer).first
     assert_equal "Couscous Salad", potluck.get_all_from_category(:appetizer).first.name
  end

end
