require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/potluck"

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck 
  end
end
