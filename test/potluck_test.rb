require 'minitest/autorun'
require 'minitest/pride'
require '../lib/potluck'
require '../lib/dish'

class PotluckTest < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-19")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entree)
    @candy_salad = Dish.new("Candy Salad", :dessert)
    @bean_dip = Dish.new("Bean Dip", :appetizer)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_it_has_a_date
    assert_equal "7-13-19", @potluck.date
  end

  def test_it_starts_with_no_dishes
    assert_equal 0, @potluck.dishes.length
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

  def test_it_can_get_all_dishes_from_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)

    assert_equal 2, @potluck.get_all_from_category(:appetizer).length
    assert_equal [@couscous_salad, @summer_pizza], @potluck.get_all_from_category(:appetizer)
  end

  def test_it_gets_appetizers_in_order_they_were_added
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)

    assert_equal "Couscous Salad", @potluck.get_all_from_category(:appetizer).first.name
    assert_equal "Summer Pizza", @potluck.get_all_from_category(:appetizer).last.name
  end

  def test_it_gets_entrees_in_order_they_were_added
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)

    assert_equal "Cocktail Meatballs", @potluck.get_all_from_category(:entree).first.name
    assert_equal "Roast Pork", @potluck.get_all_from_category(:entree).last.name
  end

  def test_it_can_display_a_menu_of_two_items
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    test_menu = {:appetizers => ["Couscous Salad"], :entrees => ["Cocktail Meatballs"]}
    assert_equal test_menu, @potluck.menu
  end
end
