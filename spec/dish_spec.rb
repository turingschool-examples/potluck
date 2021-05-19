require './lib/dish'

RSpec.describe Dish do
  before :each do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  it "exists" do

    expect(@dish).to be_an_instance_of(Dish)
  end

  it "has readable attributes" do

    expect(@dish.name).to eq("Couscous Salad")
    expect(@dish.category).to eq(:appetizer)
  end

end
