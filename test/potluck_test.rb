require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def setup
    @potluck1 = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck1
  end

  def test_it_has_a_date_and_starts_with_empty_dishes
    assert_equal "7-13-18", @potluck1.date
    assert_equal [], @potluck1.dishes
  end

  def test_we_can_add_new_dishes
    @potluck1.add_dish(@couscous_salad)
    assert_equal "Couscous Salad", @potluck1.dishes[0].name

    @potluck1.add_dish(@summer_pizza)
    assert_equal "Summer Pizza", @potluck1.dishes[1].name

    @potluck1.add_dish(@roast_pork)
    assert_equal "Roast Pork", @potluck1.dishes[2].name

    @potluck1.add_dish(@cocktail_meatballs)
    assert_equal "Cocktail Meatballs", @potluck1.dishes[3].name

    @potluck1.add_dish(@candy_salad)
    assert_equal "Candy Salad", @potluck1.dishes[4].name

    #assert_equal [@couscous_salad, @cocktail_meatballs], @potluck1.dishes
    #assert_equal 2, @potluck1.dishes.length
  end

  def test_it_can_get_all_from_category
    @potluck1.add_dish(@couscous_salad)
    assert_equal "Couscous Salad", @potluck1.dishes[0].name

    @potluck1.add_dish(@summer_pizza)
    assert_equal "Summer Pizza", @potluck1.dishes[1].name

    @potluck1.add_dish(@roast_pork)
    assert_equal "Roast Pork", @potluck1.dishes[2].name

    @potluck1.add_dish(@cocktail_meatballs)
    assert_equal "Cocktail Meatballs", @potluck1.dishes[3].name

    @potluck1.add_dish(@candy_salad)
    assert_equal "Candy Salad", @potluck1.dishes[4].name

    assert_equal [@couscous_salad, @summer_pizza], @potluck1.get_all_from_category(:appetizer)
    assert_equal @couscous_salad, @potluck1.get_all_from_category(:appetizer).first
    assert_equal "Couscous Salad", @potluck1.get_all_from_category(:appetizer).first.name
    end
end
