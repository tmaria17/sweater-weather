require "rails_helper"

describe "Forecast API" do
  xit 'should return weather info for user location' do
    user_location = 'denver,co'

    get "/api/v1/forecast?location=#{user_location}"

    expect(response.status).to eq(200)

    weather_data = JSON.parse(response.body, symbolize_names: true)

    expect(weather_data).to have_key(:data)
    expect(weather_data[:data]).to have_key(:attributes)
    expect(weather_data[:data][:attributes]).to have_key(:current_weather)
    expect(weather_data[:data][:attributes]).to have_key(:hourly_temps)
    expect(weather_data[:data][:attributes]).to have_key(:daily_weather)
  end
end
