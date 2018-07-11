require "minitest/autorun"
require "minitest/pride"
require "./lib/dish.rb"
require "./lib/potluck.rb"

class PotLuckTest < Minitest::Test

  def test_if_it_exist
    potluck = Potluck.new("")
    assert_instance_of Potluck, potluck
  end

# I actually do not need the test below! OOPS!!!!!!!  LOL
  def test_if_correct_date
    skip
    potluck = Potluck.new("7-13-18")
    expected =
    actual = potluck

    assert_equal expected, actual
  end

  def test_if_correct_date_is_passed
    potluck = Potluck.new("7-13-18")

    expected = "7-13-18"
    actual = potluck.date
    assert_equal expected, actual
  end


  def test_if_dish_array_works
    potluck = Potluck.new("7-13-18")
    potluck.dishes
    expected = []
    actual = potluck.dishes

    assert_equal expected, actual
  end

  def test_if_cous_salad_is_appdish
    skip
    dish = Dish.new("Couscous Salad", :appetizer)





  end













end
