require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it "is an instance of its class" do
    potluck = Potluck.new("7-13-18")
    
    expect(potluck).to be_an_instance_of(Potluck)
  end
  
  it "has attributes" do
    potluck = Potluck.new("7-13-18")
    
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end
  
  it "has method to add dishes" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    
    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end
  
  it "#get_all_from_category returns an array of dishes from that category" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
  end
  
  it "#menu returns hash of dishes by category" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)
    
    full_menu = {
      appetizers: ['Bean Dip', 'Couscous Salad', 'Summer Pizza'],
      entres: ['Cocktail Meatballs', 'Roast Pork'],
      desserts: ['Candy Salad']
    }
      
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)
    # require "pry"; binding.pry
    expect(potluck.menu).to eq(full_menu)
  end
  
  it "#ratio returns the ratio of the course" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)
    
    expect(potluck.ratio(:dessert)).to eq((1/6.to_f * 100).round(1))
    expect(potluck.ratio(:appetizer)).to eq((3/6.to_f * 100).round(1))
  end
  
  
  
  
  
  
  
  
end