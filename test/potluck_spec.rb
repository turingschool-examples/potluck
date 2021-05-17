require './lib/dish/'
require './lib/potluck'

RSpec.describe Potluck do
    it 'exists' do
        potluck = Potluck.new("7-13-18")

        expect(potluck).to be_an_instance_of(Potluck)
    end
end