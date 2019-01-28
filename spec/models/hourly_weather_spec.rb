require 'rails_helper'

describe 'hourly weather' do
  before :each do
    hourly_data = {
      "time": "2019-01-09T17:00:00.000+00:00",
      "icon": "partly-cloudy-day",
      "summary": "Mostly Cloudy",
      "temperature": 37.49
    }
    @hourly_weather = HourlyWeather.new(hourly_data)
  end
  it 'exists' do
    expect(@hourly_weather).to be_a(HourlyWeather)
  end
  it 'has attributes' do
    # expect(@hourly_weather.time).to eq("Thu, 01 Jan 1970 00:33:39.000000000 +0000")
    expect(@hourly_weather.icon).to eq("partly-cloudy-day")
    expect(@hourly_weather.summary).to eq("Mostly Cloudy")
    expect(@hourly_weather.temperature).to eq(37.49)


  end
end
