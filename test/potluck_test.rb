require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
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

  def test_potluck_dishes
    # require "pry"; binding.pry
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    # require "pry"; binding.pry
    assert_equal [@couscous_salad,@cocktail_meatballs], @potluck.dishes
  end

  def test_get_all_from_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    # require "pry"; binding.pry
    assert_equal [@couscous_salad,@summer_pizza], @potluck.get_all_from_category(:appetizer)
  end

  def test_menu
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    @potluck.add_dish(@bean_dip)

    @potluck.menu

    require "pry"; binding.pry

    #iterate over the dish names and shovel them into a an array category, then sort that array
    #then assign that array to a hash named the category
    #then shovel the hash into a menu array
    # assert_equal @potluck.dishes.sort, @potluck.menu

  end

  def test_ratio

  end
end
