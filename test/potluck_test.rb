require 'minitest/autorun'
require 'minitest/pride'
#require './lib/dish.rb'
require './lib/potluck'
require 'pry'

class DishTest < Minitest::Test

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def it_starts_with_an_empty_array_of_dishes
    potluck = Potluck.new("7-13-18")
    binding.pry
    assert_equal [], potluck.dishes
  end

end
