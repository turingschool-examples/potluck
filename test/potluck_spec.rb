require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it "exists" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(potluck).to be_instance_of(Potluck)
  end

  it "has a date" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.date).to eq("7-13-18")
  end

  it "has a collection of dishes" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.dishes).to eq([])
  end

  it "has a dish called Couscous Salad" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    expect(@dish).to eq(@dish)
  end

  it "has a dish called Summer Pizza" do
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(@dish).to eq(@dish)
  end

  it "has a dish called Roast Pork" do
    roast_pork = Dish.new("Roast Pork", :entre)
    expect(@dish).to eq(@dish)
  end

  it "has a dish called Cocktail Meatballs" do
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(@dish).to eq(@dish)
  end

  it "has a dish called Candy Salad" do
    candy_salad = Dish.new("Candy Salad", :dessert)
    expect(@dish).to eq(@dish)
  end

  it "can add dishes to dishes array" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])

  end

  it "has a length equal to the number of dishes" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes.length).to eq(2)
  end

end
