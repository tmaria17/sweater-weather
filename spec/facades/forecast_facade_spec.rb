require 'rails_helper'
describe ForecastFacade do
  it 'exists' do
    VCR.use_cassette("weather_facade") do
      forecast = ForecastFacade.new("Denver,CO")

      expect(forecast).to be_a(ForecastFacade)
    end
  end
  it 'returns current weather' do
    VCR.use_cassette("weather_facade") do
      forecast = ForecastFacade.new("Denver,CO")

      expect(forecast.current_weather.class).to eq(CurrentWeather)
    end
  end
  # xit 'returns daily weather summary' do
  #   VCR.use_cassette("weather_facade_1") do
  #
  #     forecast = ForecastFacade.new("Denver, CO")
  #
  #     expect(forecast.daily_weather_summary).to have_key(:summary)
  #     expect(forecast.daily_weather_summary).to have_key(:icon)
  #     expect(forecast.daily_weather_summary).to have_key(:data)
  #     expect(forecast.daily_weather_summary[:data].class).to eq(Array)
  #   end
  # end
  it 'returns daily weather' do
    VCR.use_cassette("weather_facade_1") do

      forecast = ForecastFacade.new("Denver, CO")
      # binding.pry
      expect(forecast.daily_weather[0]).to be_an_instance_of(DailyWeather)
    end
  end

  # xit 'returns hourly weather summary' do
  #   VCR.use_cassette("weather_facade_2") do
  #
  #     forecast = ForecastFacade.new("Denver, CO")
  #
  #     expect(forecast.hourly_weather_summary).to have_key(:summary)
  #     expect(forecast.hourly_weather_summary).to have_key(:icon)
  #     expect(forecast.hourly_weather_summary).to have_key(:data)
  #   end
  # end
  it 'returns hourly_weather' do
    VCR.use_cassette("weather_facade_2") do

      forecast = ForecastFacade.new("Denver, CO")

      expect(forecast.hourly_weather[0]).to be_an_instance_of(HourlyWeather)
    end
  end
end
