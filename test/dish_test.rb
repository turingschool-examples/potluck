require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def setup
    @dish1 = Dish.new("Couscous Salad", :appetizer)
  end

  def test_it_exists
    assert_instance_of Dish, @dish1 #How do you know what to put here?
  end

  def test_it_has_a_name_and_category
    assert_equal "Couscous Salad", @dish1.name
    assert_equal :appetizer, @dish1.category
  end
end
