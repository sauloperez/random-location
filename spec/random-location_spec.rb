require 'spec_helper'

describe RandomLocation do

  describe '#nearby' do
    it 'returns an array of latitude and longitude' do
      coord = RandomLocation.nearby(1, 2, 30)
      expect(coord).to be_kind_of Array
      expect(coord.length).to eq(2)

      coord.each do |c|
        expect(c).to be_kind_of(Float)
      end
    end

    it 'returns a coordinate within the radius' do
      
    end
  end
end