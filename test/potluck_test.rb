require "minitest/autorun"
require "minitest/pride"
require "./lib/potluck"
require "./lib/dish"

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new
  end

  def test_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_dishes
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_dishes_can_add
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    potluck.add_dish(couscous_salad)

    refute potluck.dishes.empty?
  end

  def test_one_is_added_at_a_time
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    potluck.add_dish(couscous_salad)

    assert_equal 1,potluck.dishes.length
  end

  def test_it_can_retrieve_category
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)

    expected = [couscous_salad,summer_pizza]
    actual = potluck.get_all_from_category(:appetizer)

    assert_equal expected, actual
  end

  def test_the_menu
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)

    expected = [cocktail_meatballs,couscous_salad,roast_pork,summer_pizza]
    actual = potluck.menu

    assert_equal expected, actual
  end

  def test_ratio_of_category
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)

    expected = 50.0
    actual = potluck.ratio(:appetizer)

    assert_equal expected, actual
  end

end
