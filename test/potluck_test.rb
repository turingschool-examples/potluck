require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def test_it_starts_without_dishes
    potluck = Potluck.new("7-13-18")
    assert_equal [], potluck.dishes
  end

  def test_it_adds_dishes_to_potluck
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes
  end

  def test_it_returns_total_dishes_at_potluck
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    assert_equal 2, potluck.dishes.length
  end

  def test_it_returns_dishes_in_category
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    candy_salad = Dish.new("Candy Salad", :dessert)
    roast_pork = Dish.new("Roast Pork", :entree)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    assert_equal [couscous_salad, summer_pizza], potluck.get_all_from_category(:appetizer)
    assert_equal couscous_salad, potluck.get_all_from_category(:appetizer).first
    assert_equal "Couscous Salad", potluck.get_all_from_category(:appetizer).first.name
  end
end

**Note** for the the `menu` method, dishes are sorted alphabetically.


pry(main)> potluck = Potluck.new("7-13-18")
#=> #<Potluck:0x00007f9422838908...>

pry(main)> couscous_salad = Dish.new("Couscous Salad", :appetizer)
#=> #<Dish:0x00007f942191e9b8...

pry(main)> summer_pizza = Dish.new("Summer Pizza", :appetizer)
#=> #<Dish:0x00007f9421d26880...>

pry(main)> roast_pork = Dish.new("Roast Pork", :entre)
#=> #<Dish:0x00007f9421d04870...>

pry(main)> cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
#=> #<Dish:0x00007f9421ce6e88...>

pry(main)> candy_salad = Dish.new("Candy Salad", :dessert)
#=> #<Dish:0x00007f9421cb60f8...>

pry(main)> bean_dip = Dish.new("Bean Dip", :appetizer)
#=> #<Dish:0x00007fa115885500...>

pry(main)> potluck.add_dish(couscous_salad)
#=> [#<Dish:0x00007f942191e9b8...]

pry(main)> potluck.add_dish(summer_pizza)
#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>]

pry(main)> potluck.add_dish(roast_pork)
#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>]

pry(main)> potluck.add_dish(cocktail_meatballs)
#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>, #<Dish:0x00007f9421dAA770...>]

pry(main)> potluck.add_dish(candy_salad)
#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>, #<Dish:0x00007f9421dAA770...>, #<Dish:0x00007f9421dAA610...>]

pry(main)> potluck.add_dish(bean_dip)
#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>, #<Dish:0x00007f9421dAA770...>, #<Dish:0x00007f9421dAA610...>, #<Dish:0x00007f9421dAA680...>]

pry(main)> potluck.menu
# => {:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entres=>["Cocktail Meatballs", "Roast Pork"],:desserts=>["Candy Salad"]}

pry(main)> potluck.ratio(:appetizer)
#=> 50.0
