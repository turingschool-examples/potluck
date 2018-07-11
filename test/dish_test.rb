# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/emoji'
require './lib/dish'

class DishTest < Minitest::Test
  def test_it_exists
    dish = Dish.new('Couscous Salad', :appetizer)

    assert_instance_of Dish, dish
  end

  def test_it_has_a_name
    dish = Dish.new('Couscous Salad', :appetizer)
    expected = 'Couscous Salad'
    actual = dish.name

    assert_equal expected, actual
  end

  def test_it_has_a_category
    dish = Dish.new('Couscous Salad', :appetizer)
    expected = :appetizer
    actual = dish.category

    assert_equal expected, actual
  end
end
