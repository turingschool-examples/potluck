require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class CardTest < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
    @salad = Dish.new("Couscous Salad", :appetizer)
    @pizza = Dish.new("Summer Pizza", :appetizer)
    @meatballs = Dish.new("Cocktail Meatballs", :entre)
    @pork = Dish.new("Roast Pork", :entre)
    @dessert = Dish.new("Candy Salad", :dessert)
    @dip = Dish.new("Bean Dip", :appetizer)
  end

  def test_menu_is_alphabetical
    @potluck.add_dish(@salad)
    @potluck.add_dish(@pizza)
    @potluck.add_dish(@pork)
    @potluck.add_dish(@meatballs)
    @potluck.add_dish(@dessert)
    @potluck.add_dish(@dip)
    assert_equal 6, @potluck.dishes.length
    assert_equal 3, @potluck.menu.length
    assert_equal [@dessert.name], @potluck.menu[:desserts]
    assert_equal [@meatballs.name, @pork.name], @potluck.menu[:entres]
    assert_equal [@dip.name, @salad.name, @pizza.name], @potluck.menu[:appetizers]
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_dishes_starts_empty
    assert_empty @potluck.dishes
  end

  def test_dishes_get_added
    @potluck.add_dish(@salad)
    assert_equal 1, @potluck.dishes.length
    @potluck.add_dish(@meatballs)
    assert_equal 2, @potluck.dishes.length
    assert_equal @salad, @potluck.dishes[0]
    assert_equal @meatballs, @potluck.dishes[1]
  end

  def test_get_all_from_category
    @potluck.add_dish(@salad)
    @potluck.add_dish(@pizza)
    @potluck.add_dish(@pork)
    @potluck.add_dish(@meatballs)
    @potluck.add_dish(@dessert)
    assert_equal 5, @potluck.dishes.length
    assert_equal 2, @potluck.get_all_from_category(:entre).length
    assert_instance_of Array, @potluck.get_all_from_category(:appetizer)
    assert_instance_of Dish, @potluck.get_all_from_category(:appetizer)[0]
    assert_equal @salad, @potluck.get_all_from_category(:appetizer)[0]
  end

  def test_ratio
    @potluck.add_dish(@salad)
    @potluck.add_dish(@pizza)
    @potluck.add_dish(@pork)
    @potluck.add_dish(@meatballs)
    @potluck.add_dish(@dessert)
    @potluck.add_dish(@dip)
    assert_equal 50.0, @potluck.ratio(:appetizer)
  end
end
