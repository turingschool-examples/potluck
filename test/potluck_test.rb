require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/potluck'
require_relative '../lib/dish'

class PotluckTest < MiniTest::Test 

  def test_it_exists
    potluck = Potluck.new('7-13-18')
    assert_instance_of Potluck, potluck
  end
  
  def  test_it_has_a_date
    potluck = Potluck.new('7-13-18')
    assert_equal '7-13-18', potluck.date
  end
  
  def test_it_has_an_empty_list_of_dishes
    potluck = Potluck.new('7-13-18')
    assert_equal [], potluck.dishes
  end
  
  def test_it_can_add_a_dish
    potluck = Potluck.new('7-13-18')
    dish1 = Dish.new('Couscous Salad', :appetizer)
    dish2 = Dish.new('Cocktail Meatballs', :entre)
    potluck.add_dish(dish1)
    assert_equal [dish1], potluck.dishes
    potluck.add_dish(dish2)
    assert_equal [dish1, dish2], potluck.dishes
  end

  def test_it_can_return_dishes_per_category
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new('Summer Pizza', :appetizer)
    roast_pork = Dish.new('Roast Pork', :entre)
    potluck.add_dish(couscous_salad)
    assert_equal [couscous_salad], potluck.get_all_from_category(:appetizer)
    potluck.add_dish(summer_pizza)
    assert_equal [couscous_salad, summer_pizza], potluck.get_all_from_category(:appetizer)
    assert_equal [], potluck.get_all_from_category(:entre)
    potluck.add_dish(roast_pork)
    assert_equal [roast_pork], potluck.get_all_from_category(:entre)
  end

  def test_it_can_return_the_menu
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new('Summer Pizza', :appetizer)
    roast_pork = Dish.new('Roast Pork', :entre)
    candy_salad = Dish.new('Candy Salad', :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    menu = { appetizer: [couscous_salad, summer_pizza], entre: [roast_pork], dessert: [candy_salad] }
    assert_equal menu , potluck.menu
  end

  def test_it_returns_ratio
    potluck = Potluck.new('7-13-18')
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new('Summer Pizza', :appetizer)
    roast_pork = Dish.new('Roast Pork', :entre)
    candy_salad = Dish.new('Candy Salad', :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    assert_equal 50.0, potluck.ratio(:appetizer)
    assert_equal 25.0, potluck.ratio(:entre)
    assert_equal 25.0, potluck.ratio(:dessert)
  end

end