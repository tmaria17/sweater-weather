require 'rails_helper'
describe CoordinateService do
  it 'exists' do
    VCR.use_cassette("coord_service") do

      coordinate_service = CoordinateService.new('Denver, CO')

      expect(coordinate_service).to be_a(CoordinateService)
    end
  end

  it 'returns coordinates' do
    VCR.use_cassette("coord_service") do
      coordinate_service = CoordinateService.new('Denver, CO')

      expect(coordinate_service.get_coordinates).to eq({"lat": 39.7392358, "lng": -104.990251})
    end
  end
end
