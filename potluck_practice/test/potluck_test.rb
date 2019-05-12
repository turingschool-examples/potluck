require './lib/dish'
require './lib/potluck'
require 'minitest/pride'
require 'minitest/autorun'

class PotluckTest < MiniTest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_it_takes_in_a_date
    assert_equal "7-13-18", @potluck.date
  end

  def test_it_has_empty_dishes_array
    # skip
    assert_equal [], @potluck.dishes
  end

  def test_it_makes_two_new_dishes
    assert_instance_of Dish, @couscous_salad
    assert_instance_of Dish, @cocktail_meatballs
  end

  def test_it_adds_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    # @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    
    assert_equal [@couscous_salad, @cocktail_meatballs, @summer_pizza,
    @roast_pork, @candy_salad], @potluck.dishes
  end

  def test_it_can_get_all_dishes_from_category
    potluck = @potluck.get_all_from_category(:appetizer)
    potluck = @potluck.get_all_from_category(:entre)
    potluck = @potluck.get_all_from_category(:dessert)

    assert_equal [@couscous_salad, @summer_pizza], @potluck.get_all_from_category(:appetizer)
    assert_equal [@cocktail_meatballs, @roast_pork], @potluck.get_all_from_category(:entre)
    assert_equal "Couscous Salad", @potluck.get_all_from_category(:appetizer).first.name
  end
end
