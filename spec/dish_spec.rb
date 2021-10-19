require './lib/dish'

describe Dish do
  it 'exists' do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish).to be_a Dish
  end

  it 'returns dish name argument' do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish.name).to eq ("Couscous Salad")
  end

  it 'returns category name argument' do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish.category).to eq (:appetizer)
  end



end
