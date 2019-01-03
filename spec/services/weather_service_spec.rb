require 'rails_helper'
describe WeatherService do
  it 'exists' do
    VCR.use_cassette("weather_service") do
      coordinates = {"lat": 39.7392358, "lng": -104.990251}
      weather_service = WeatherService.new(coordinates)

      expect(weather_service).to be_a(WeatherService)
    end
  end
  it 'gets weather' do
    VCR.use_cassette("weather_service") do
      coordinates = {"lat": 39.7392358, "lng": -104.990251}
      weather_service = WeatherService.new(coordinates)

      expect(weather_service.get_weather).to have_key(:timezone)
      expect(weather_service.get_weather).to have_key(:currently)
      expect(weather_service.get_weather[:currently][:summary]).to eq("Clear")
    end
  end
end
