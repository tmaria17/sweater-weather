require 'rails_helper'

describe 'current_weather' do
  before :each do
    current_data = {
      "time": 1547054753,
      "summary": "Mostly Cloudy",
      "icon": "partly-cloudy-day",
      "temperature": 39.72,
      "apparentTemperature": 39.72,
      "humidity": 0.38,
      "visibility": 10,
      "uvIndex": 2
            }
      @current_weather = CurrentWeather.new(current_data)
    end
    it 'exists' do
      expect(@current_weather).to be_a(CurrentWeather)
    end
    it 'has attributes' do
      expect(@current_weather.time).to eq(1547054753)
      expect(@current_weather.summary).to eq("Mostly Cloudy")
      expect(@current_weather.icon).to eq("partly-cloudy-day")
      expect(@current_weather.temperature).to eq(39.72)
      expect(@current_weather.feels_like).to eq(39.72)
      expect(@current_weather.humidity).to eq(0.38)
      expect(@current_weather.visibility).to eq(10)
      expect(@current_weather.uv_index).to eq(2)
    end
end
