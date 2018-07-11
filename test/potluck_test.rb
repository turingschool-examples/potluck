# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/emoji'
require './lib/potluck'
require './lib/dish'

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new('7-13-18')

    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new('7-13-18')

    expected = '7-13-18'
    actual = potluck.date

    assert_equal expected, actual
  end

  def test_it_starts_with_no_dishes
    potluck = Potluck.new('7-13-18')

    expected = []
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_it_can_add_dishes
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entree)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expected = [couscous_salad, cocktail_meatballs]
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_it_can_count_dishes
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entree)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expected = 2
    actual = potluck.dishes.length

    assert_equal expected, actual
  end

  def test_it_can_return_categories_of_dishes
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new('Summer Pizza', :appetizer)
    roast_pork = Dish.new('Roast Pork', :entree)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entree)
    candy_salad = Dish.new('Candy Salad', :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expected = [couscous_salad, summer_pizza]
    actual = potluck.get_all_from_category(:appetizer)

    assert_equal expected, actual
  end
end
