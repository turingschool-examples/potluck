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
end
