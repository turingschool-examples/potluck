require 'pry'
require './lib/dish.rb'

RSpec.describe Dish do
  dish = Dish.new("Couscous Salad", :appetizer)

  it 'has a name & category' do
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
  end
end
