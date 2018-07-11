require "pry"
require "minitest/autorun"
require "minitest/pride"
require "./lib/dish"
require "./lib/potluck"

class PotluckTest < Minitest::Test

  def test_if_it_exists
    potluck = Potluck.new
    assert_instance_of Potluck, potluck
  end

  def test_if_it_adds_dishes
    potluck = Potluck.new
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    assert_equal "Couscous Salad", potluck.add_dish("Couscous Salad")
  end

  # def test_if_it_adds_second_dish
  #   potluck = Potluck.new
  #   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  #   assert_equal "Cocktail Meatballs", potluck.add_dish_two("Cocktail Meatballs")
  # end

end
