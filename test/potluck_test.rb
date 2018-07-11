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
    expected = []

    assert_equal expected, potluck.dishes
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

  def test_can_list_dishes_by_category
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)

    expected = [couscous_salad, summer_pizza]
    actual = potluck.get_all_from_category(:appetizer)

    assert_equal expected, actual
    assert_equal couscous_salad, actual.first
    assert_equal "Couscous Salad", actual.first.name
  end

  def test_menu_lists_dishs_in_hash
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)
    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)

    expected = {:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],
                :entres=>["Cocktail Meatballs", "Roast Pork"],
                :desserts=>["Candy Salad"]}
    actual = potluck.menu

    assert_equal expected, actual
  end

  def test_it_gives_ratio_of_items_by_category
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)
    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)

    expected = 0.50
    actual = potluck.ratio(:appetizers)

    assert_equal expected, actual
  end
end
