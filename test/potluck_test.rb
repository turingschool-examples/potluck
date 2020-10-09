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

end
