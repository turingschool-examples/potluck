require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/potluck"

class PotluckTest < Minitest::Test
  def test_it_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def test_it_has_no_dishes
    potluck = Potluck.new("7-13-18")
    assert_equal [], potluck.dishes
  end

  def test_it_has_couscous
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, couscous_salad
  end

  def test_it_has_meatballs
    potluck = Potluck.new("7-13-18")
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    assert_instance_of Dish, cocktail_meatballs
  end
  # def test_adding_dishes_to_the_potluck
  #   potluck = Potluck.new("7-13-18")
  #   couscous_salad = Dish.new("Couscous Salad", :appetizer)
  #   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
  #   potluck.add_dish(couscous_salad)
  #   potluck.add_dish(cocktail_meatballs)
  # end

end
