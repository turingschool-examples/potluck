require "minitest/autorun"
require "minitest/pride"
require "./lib/dish.rb"
require "./lib/potluck.rb"

class PotluckTest < Minitest::Test
  def test_it_exists
  potluck = Potluck.new("7-13-18")
  assert_instance_of Potluck, potluck
  end


end
