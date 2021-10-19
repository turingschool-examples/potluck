require './lib/dish'

RSpec.describe Dish do
  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  describe '#initialize' do
    it 'creates instance of Dish' do
      expect(@dish).to be_instance_of Dish
    end

    it 'has name' do
      expect(@dish.name).to eq("Couscous Salad")
    end

    it 'has category' do
      expect(@dish.category).to eq(:appetizer) 
    end
  end



end
