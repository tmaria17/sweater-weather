require 'rails_helper'

describe 'daily weather' do
  before :each do
    daily_data = {
      "summary": "Mostly cloudy throughout the day.",
      "icon": "partly-cloudy-night",
      "time": 1547017200,
      "temperatureHigh": 52.18,
      "temperatureLow": 28.76,
      "precipProbability": 0
    }
    @day_weather = DailyWeather.new(daily_data)
  end
  it 'exists' do
    expect(@day_weather).to be_a(DailyWeather)
  end
  it 'has attributes' do
    expect(@day_weather.summary).to eq("Mostly cloudy throughout the day.")
    expect(@day_weather.icon).to eq("partly-cloudy-night")
    expect(@day_weather.time).to eq(1547017200)
    expect(@day_weather.temp_high).to eq(52.18)
    expect(@day_weather.temp_low).to eq(28.76)
    expect(@day_weather.chance_of_rain).to eq(0)
  end
end
