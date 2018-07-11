require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"
require "./lib/potluck"

class PotluckTest < Minitest::Test

  def test_it_exist
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_it_has_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_it_has_dishes_no_dishes
    potluck = Potluck.new("7-13-18")

    assert potluck.dishes.empty?
  end

  def test_it_can_add_one_dish
    potluck = Potluck.new("7-13-18")
    dish = Dish.new("Couscous Salad", :appetizer)
    

    assert potluck.add_dish(dish)
  end
end
