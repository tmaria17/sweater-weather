require 'rails_helper'
describe CoordinateService do
  it 'exists' do
    coordinate_service = CoordinateService.new('Denver, CO')

    expect(coordinate_service).to be_a(CoordinateService)
  end

  it 'returns coordinates' do
    coordinate_service = CoordinateService.new('Denver, CO')

    expect(coordinate_service.get_coordinates).to eq({"lat": 39.7392358, "lng": -104.990251})
  end
end
