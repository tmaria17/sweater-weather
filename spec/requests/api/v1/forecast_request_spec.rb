require "rails_helper"

describe "Forecast API" do
  it 'should return weather info for user location' do
    VCR.use_cassette("forecast_request") do

      user_location = 'denver,co'

      get "/api/v1/forecast?location=#{user_location}"

      expect(response.status).to eq(200)

      weather_data = JSON.parse(response.body, symbolize_names: true)
      # binding.pry
      expect(weather_data).to have_key(:data)
      expect(weather_data[:data]).to have_key(:attributes)
      expect(weather_data[:data][:attributes]).to have_key(:hourly_weather_summary)
      expect(weather_data[:data][:attributes]).to have_key(:daily_weather_summary)
      expect(weather_data[:data][:attributes]).to have_key(:current_weather)
      expect(weather_data[:data][:attributes]).to have_key(:hourly_weather)
      expect(weather_data[:data][:attributes]).to have_key(:daily_weather)
    end
  end
end
