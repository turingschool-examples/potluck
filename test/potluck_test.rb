require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'


class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_it_has_attributes
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
    assert_equal [], potluck.dishes
  end

end
