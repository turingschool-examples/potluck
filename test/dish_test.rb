require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'



class DishTest < Minitest::Test

  def test_it_exists
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
  end







end

# pry(main)> require './lib/dish'
# #=> true
# pry(main)> dish = Dish.new("Couscous Salad", :appetizer)
# #=> #<Dish:0x00007f93fe9aa698...>
# pry(main)> dish.name
# #=> "Couscous Salad"
# pry(main)> dish.category
# #=> :appetizer
