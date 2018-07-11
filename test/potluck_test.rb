# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/emoji'
require './lib/potluck'
require './lib/dish'

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new('7-13-18')

    assert_instance_of Potluck, potluck
  end
end
