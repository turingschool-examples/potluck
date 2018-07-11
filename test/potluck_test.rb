require './lib/dish.rb'
require './lib/potluck.rb'
require 'minitest/pride'
require 'minitest/autorun'

class PotluckTest < Minitest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_it_has_a_date
    expected = "7-13-18"
    result = @potluck.date

    assert_equal expected, result
  end

  def test_it_starts_with_no_dishes
    expected = []
    result = @potluck.dishes

    assert_equal expected, result
  end

  def test_it_can_add_dishes
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @potluck.add_dish(couscous_salad)
    expected = couscous_salad
    result = @potluck.dishes[0]

    assert_equal expected, result
  end

  def test_it_can_get_dishes_of_certain_type
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(summer_pizza)
    @potluck.add_dish(roast_pork)
    @potluck.add_dish(cocktail_meatballs)
    @potluck.add_dish(candy_salad)
    expected = [@potluck.dishes[0], @potluck.dishes[1]]
    result = @potluck.get_all_from_category(:appetizer)

    assert_equal expected, result
  end

  def test_it_can_create_a_menu_of_dishes
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(summer_pizza)
    @potluck.add_dish(roast_pork)
    @potluck.add_dish(cocktail_meatballs)
    @potluck.add_dish(candy_salad)
    assert @potluck.menu
  end

  def test_it_can_give_you_the_ratio_of_a_category
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(summer_pizza)
    @potluck.add_dish(roast_pork)
    @potluck.add_dish(cocktail_meatballs)
    @potluck.add_dish(candy_salad)
    expected = 40.0
    result = @potluck.ratio(:appetizer)

    assert_equal expected, result

  end



end
