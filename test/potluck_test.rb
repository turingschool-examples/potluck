require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
    @bean_dip = Dish.new("Bean Dip", :appetizer)
  end

  def test_it_exists
    assert_instance_of Potluck, @potluck
  end

  def test_date_method_returns_date
    assert_equal "7-13-18", @potluck.date
  end

  def test_dishes_method_returns_empty_array
    assert_equal [], @potluck.dishes
  end

  def test_add_dishes_pushes_dish_objects_to_dishes_variable
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    assert_equal [@couscous_salad, @cocktail_meatballs], @potluck.dishes
  end

  def test_length_method_on_dishes_returns_number_of_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    assert_equal 2, @potluck.dishes.length
  end

  def test_get_all_from_category_method_returns_only_dishes_matching_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)

    assert_equal [@couscous_salad, @summer_pizza], @potluck.get_all_from_category(:appetizer)
    assert_equal [@cocktail_meatballs, @roast_pork], @potluck.get_all_from_category(:entre)
    assert_equal [@candy_salad], @potluck.get_all_from_category(:dessert)
  end

  def test_it_can_return_first_dish_in_category_and_its_name
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)

    assert_equal @couscous_salad, @potluck.get_all_from_category(:appetizer).first
    assert_equal "Couscous Salad", @potluck.get_all_from_category(:appetizer).first.name
    assert_equal @cocktail_meatballs, @potluck.get_all_from_category(:entre).first
    assert_equal "Cocktail Meatballs", @potluck.get_all_from_category(:entre).first.name
  end

  def test_menu_method_returns_hash_with_category_keys_and_name_values
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    @potluck.add_dish(@bean_dip)
    menu = {:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entres=>["Cocktail Meatballs", "Roast Pork"],:desserts=>["Candy Salad"]}

    assert_equal menu, @potluck.menu
  end

  def test_ratio_method_returns_float_to_one_digit_percentage_of_items_in_category_of_total_items
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    @potluck.add_dish(@bean_dip)

    assert_equal 50.0, @potluck.ratio(:appetizer)
    assert_equal 33.3, @potluck.ratio(:entre)
    assert_equal 16.7, @potluck.ratio(:dessert)
  end

end
