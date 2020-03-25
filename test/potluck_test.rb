require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_it_has_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  # def test_it_can_add_dishes
  #   couscous_salad = Dish.new("Couscous Salad", :appetizer)
  #   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  #
  # end

end
