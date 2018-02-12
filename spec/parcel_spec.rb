require 'rspec'
require 'parcel'
require 'pry'

describe('Parcel') do
  describe('#volume') do
    it("takes dimensions from initialize method and returns parcel volume") do
      test = Parcel.new(1,2,3,10)
      expect(test.volume).to(eq(6))
    end
  end
end
