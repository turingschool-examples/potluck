require './lib/dish'
require './lib/potluck'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PotluckTest < Minitest::Test

  def test_existence
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_attributes
    potluck = Potluck.new("7-13-18")
    result = potluck.date
    expected = "7-13-18"
    assert_equal expected, result
    result = potluck.dishes
    expected = []
    assert_equal expected, result
  end

  def test_it_can_hold_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    result = potluck.dishes
    expected = [couscous_salad, cocktail_meatballs]
    assert_equal expected, result
  end

  def test_length_of_held_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    result = potluck.dishes.length
    expected = 2
    assert_equal expected, result
  end

  def test_dish_categories
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    result = potluck.get_all_from_category(:appetizer)
    expected = [couscous_salad, summer_pizza]
    assert_equal expected, result
  end

  def test_get_name_from_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    result = potluck.get_all_from_category(:appetizer).first.name
    expected = "Couscous Salad"
    assert_equal expected, result
  end

  def test_menu
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)
    result = potluck.menu
    expected = {:appetizers =>["Bean Dip", "Couscous Salad", "Summer Pizza"],
                :entres =>["Cocktail Meatballs", "Roast Pork"],
                :desserts =>["Candy Salad"]}
    assert_equal expected, result
  end


end
