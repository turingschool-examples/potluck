require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  # def setup
  #   dish = Dish.new("Couscous Salad", :appetizer)
  #   potluck = Potluck.new("7-13-18")
  # end

  def test_Dish_exists
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_Dish_has_a_name
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal "Couscous Salad", dish.name
  end

  def test_Dish_has_a_category
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal :appetizer, dish.category
  end

  def test_Potluck_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_Potluck_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end
end
