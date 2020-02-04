require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < MiniTest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_potluck_has_a_date
    assert_equal "7-13-18", @potluck.date
  end

  def test_potluck_has_dishes
    assert_equal [], @potluck.dishes
  end

  def test_dishes_can_be_added_to_potluck
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    assert_equal [@couscous_salad, @cocktail_meatballs], @potluck.dishes
  end

  def test_dishes_can_be_counted
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    assert_equal 2, @potluck.dishes.length
  end

  def test_potluck_dishes_can_be_retrieved_by_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    assert_equal [@couscous_salad, @summer_pizza], @potluck.get_all_from_category(:appetizer)
    assert_equal @couscous_salad, @potluck.get_all_from_category(:appetizer).first
    assert_equal "Couscous Salad", @potluck.get_all_from_category(:appetizer).first.name
  end
end
# pry(main)> potluck.get_all_from_category(:appetizer).first.name
# => "Couscous Salad"
# ```
