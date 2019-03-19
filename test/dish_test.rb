require "rspec/autorun"
require_relative '../lib/dish.rb'

describe Dish do

  before do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  it "exists" do
    expect(@dish).to be_a(Dish)
  end

  it "has a name" do
    expect(@dish.name).to eq("Couscous Salad")
  end

  it "has a category" do
    expect(@dish.category).to eq(:appetizer)
  end

end
