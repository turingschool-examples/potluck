require './lib/dish'
require './lib/potluck'
require 'minitest/autorun'
require 'minitest/pride'

class PotluckTest < MiniTest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end


end
