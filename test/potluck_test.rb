require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck 
  end


end
# pry(main)> require './lib/dish'
# #=> true
# pry(main)> require './lib/potluck'
# #=> true
# pry(main)> potluck = Potluck.new("7-13-18")
# #=> #<Potluck:0x00007fccc4abe940...>
# pry(main)> potluck.date
# #=> "7-13-18"
# pry(main)> potluck.dishes
# #=> []
# pry(main)> couscous_salad = Dish.new("Couscous Salad", :appetizer)
# #=> #<Dish:0x00007fccc4249940...>
# pry(main)> cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
# #=> #<Dish:0x00007fccc499ceb8...>
# pry(main)> potluck.add_dish(couscous_salad)
# #=> [#<Dish:0x00007fccc4249940...>]
# pry(main)> potluck.add_dish(cocktail_meatballs)
# #=> [#<Dish:0x00007fccc4249940...>, #<Dish:0x00007fccc499ceb8...>]
# pry(main)> potluck.dishes
# #=> [#<Dish:0x00007fccc4249940...>, #<Dish:0x00007fccc499ceb8...>]
# pry(main)> potluck.dishes.length
# #=> 2
