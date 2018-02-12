require 'rspec'
require 'parcel'
require 'pry'

describe('Parcel') do
  test = Parcel.new(1,2,3,10)
  describe('#volume') do
    it("takes dimensions from initialize method and returns parcel volume") do
      expect(test.volume).to(eq(6))
    end
  end

  describe('#cost_to_ship') do
    it('calculates shipping cost based on parcel and shipping info') do
      expect(test.cost_to_ship).to(eq(5.8))
    end
  end
end
