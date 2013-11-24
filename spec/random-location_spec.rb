require 'spec_helper'

describe RandomLocation do

  describe '#near_by' do
    it 'returns an array of latitude and longitude' do
      coord = RandomLocation.near_by(1, 2, 30)
      expect(coord).to be_kind_of Array
      expect(coord.length).to eq(2)

      coord.each do |c|
        expect(c).to be_kind_of(Float)
      end
    end
  end
end
