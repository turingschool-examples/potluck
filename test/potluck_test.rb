require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/dish.rb'
require './lib/potluck.rb'


class PotluckTest < Minitest::Test
  def test_dish_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_potluck_date
    potluck= Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_if_dishes_default_empty_array
    potluck = Potluck.new("7-13-18")

    assert_equal [], potluck.dishes
  end

  def test_if_cous_added
    couscous_salad = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, couscous_salad
  end

  def test_if_meatballs_added
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    assert_instance_of Dish, cocktail_meatballs
  end

#not working, fix this
  def test_if_couscous_added
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")

    # assert_instance_of Dish, potluck.add_dish(couscous_salad)
    assert_instance_of Dish, potluck.add_dish(cocktail_meatballs)
  end




end
