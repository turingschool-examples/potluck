require './lib/dish/'
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
        potluck.add_dish(couscous_salad)

        expect(potluck.dishes).to eq(couscous_salad)
    end
end