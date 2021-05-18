require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
    it 'exists' do
        potluck = Potluck.new("7-13-18")

        expect(potluck).to be_an_instance_of(Potluck)
    end

    it 'contains date' do
        potluck = Potluck.new("7-13-18")

        expect(potluck.date).to match("7-13-18")
    end

    it 'holds dishes' do
        potluck = Potluck.new("7-13-18")
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        potluck.dishes << couscous_salad
        potluck.dishes << cocktail_meatballs

        expect(potluck.dishes[0]).to eq(couscous_salad)
        expect(potluck.dishes[1]).to eq(cocktail_meatballs)
        expect(potluck.dishes.length).to eq(2)
    end

    it 'adds dishes' do
        potluck = Potluck.new("7-13-18")
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        summer_pizza = Dish.new("Summer Pizza", :appetizer)
        roast_pork = Dish.new("Roast Pork", :entre)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        candy_salad = Dish.new("Candy Salad", :dessert)
        potluck.add_dish(couscous_salad)

        expect(potluck.dishes).to eq([couscous_salad])

        potluck.add_dish(summer_pizza)
        potluck.add_dish(roast_pork)
        potluck.add_dish(cocktail_meatballs)
        potluck.add_dish(candy_salad)
        expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
    end

    it 'retrieves dishes from category' do
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
        expect(potluck.get_all_from_category(:entre)).to eq([roast_pork, cocktail_meatballs])
    end
end