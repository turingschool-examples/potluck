require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def test_dish_exists
   dish = Dish.new("Couscous Salad", :appetizer)
   assert_instance_of Dish, dish
  end

 def test_dish_has_a_name
   dish = Dish.new("Couscous Salad", :appetizer)
   assert_equal "Couscous Salad", dish.name
 end

 def test_dish_has_a_catagory
   dish = Dish.new("Couscous Salad", :appetizer)
   assert_equal :appetizer, dish.category
 end
end
