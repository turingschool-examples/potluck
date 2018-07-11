require 'minitest/autorun'
require 'minitest/pride'

require './lib/potluck'

class PotluckTest < Minitest::Test

  def test_potluck
    potluck = Potluck.new("7-13-18")

    assert Potluck, potluck
  end

  def test_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

  def test_category
    potluck = Potluck.new("7-13-18")
    potluck.dishes
    
    assert_equal [], potluck.dishes
  end

  def test_new_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)

    assert_kind_of Dish, couscous_salad
  end

  def test_meatballs
    potluck = Potluck.new("7-13-18")
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    assert_kind_of Dish, cocktail_meatballs
  end

end
