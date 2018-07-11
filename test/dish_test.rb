require "minitest/autorun"
require "autorun/pride"
require "./lib/dish.rb"

class DishTest < Minitest::Test
  dish = Dish.new("Couscous Salad", :appetizer)

  assert_instance_of Dish, dish
end
