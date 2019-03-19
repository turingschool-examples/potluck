require "rspec/autorun"
require_relative '../lib/dish.rb'
require_relative '../lib/potluck.rb'

describe Potluck do

  before do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
  end

  it "exists" do
    expect(@potluck).to be_a(Potluck)
  end

  it "has a date" do
    expect(@potluck.date).to eq("7-13-18")
  end

  it "starts with an empty dishes array" do
    expect(@potluck.dishes).to eq([])
  end

  it "accepts dishes into potluck array" do
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
    expect(@potluck.dishes.length).to eq(2)
  end

end
