require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
  end

  describe '#initialize' do
    it 'creates instance of Potluck'do
      expect(@potluck).to be_instance_of Potluck
    end

    it 'has a date' do
      expect(@potluck.date).to eq("7-13-18")
    end

    it 'has empty dish array' do
      expect(@potluck.dishes).to eq []
    end
  end
end

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
  end

  describe '#add_dish' do
    it 'pushes dish to dishes array' do
      expect(@potluck.dishes[0]).to eq(@couscous_salad)
        expect(@potluck.dishes[1]).to eq(@cocktail_meatballs)
    end

    it 'has number of items' do
      expect(@potluck.dishes.length).to eq 2
    end
  end
end
