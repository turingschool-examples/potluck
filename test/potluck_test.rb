require "pry"
require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"
require "./lib/potluck"

class PotluckTest < Minitest::Test

  def test_if_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_if_it_adds_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    assert_equal "Couscous Salad", potluck.add_dish("Couscous Salad")
  end

end
