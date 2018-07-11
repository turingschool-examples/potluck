require 'minitest/autorun'
require 'minitest/pride'
require './lib/potluck'
require './lib/dish'

class PotluckTest < Minitest::Test 

  def test_it_exists
    potluck = Potluck.new("7-13-18")
    
    assert_instance_of Potluck, potluck 
  end 
  
  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    
    assert_equal "7-13-18", potluck.date 
  end
  
  def test_dishes_start_with_empty_array
    potluck = Potluck.new("7-13-18")
    
    assert_equal [], potluck.dishes 
  end 
  
  def test_it_adds_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    
    assert_instance_of Dish, potluck.add_dish(couscous_salad)
    end 
    
    def test_it_adds_another_dish
      potluck = Potluck.new("7-13-18")
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      
      assert_instance_of Dish, potluck.add_dish(cocktail_meatballs)
    end 
    
    def test_it_adds_new_dishes_to_array_and_counts
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      
      assert_equal 2, potluck.dishes.length 
    end 
      
end