require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
class Test < Minitest::Test

  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
    @potluck = Potluck.new("7-13-18")
  end

  def test_it_exists_and_has_attributes

    assert_instance_of Potluck, @potluck
    assert_equal "7-13-18", @potluck.date
    assert_equal [], @potluck.dishes
  end

  def test_it_can_add_dishes
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(cocktail_meatballs)

    assert_equal 2, @potluck.dishes.count
  end

end
