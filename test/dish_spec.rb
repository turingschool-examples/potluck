require './lib/dish'

RSpec.describe Dish do
  it 'exists' do
    dish = Dish.new('Couscous Salad', :appetizer)

    expect(dish).to be_an_instance_of(Dish)
  end

  it 'returns name' do
    dish = Dish.new('Couscous Salad', :appetizer)

    expect(dish.name).to eq('Couscous Salad')
  end

  it 'returns category' do
    dish = Dish.new('Couscous Salad', :appetizer)

    expect(dish.category).to eq(:appetizer)
  end
end
