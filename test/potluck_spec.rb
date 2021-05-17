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
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        potluck = Potluck.new("7-13-18")
        potluck.dishes << couscous_salad
        potluck.dishes << cocktail_meatballs

        expect(potluck.dishes[0]).to eq(couscous_salad)
        expect(potluck.dishes[1]).to eq(cocktail_meatballs)
    end
end