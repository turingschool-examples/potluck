# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/emoji'
require './lib/dish'

class DishTest < Minitest::Test
  def test_it_exists
    dish = Dish.new

    assert_instance_of Dish, dish
  end
end
