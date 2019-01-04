class ForecastFacade
  def initialize(location)
    @location = location
  end

  def location
    @location
  end

  def current_weather
    CurrentWeather.new(weather_service.current_weather_data)
  end

  def hourly_weather
    # binding.pry
    weather_service.hourly_weather_data.map do |data|
      HourlyWeather.new(data)
    end.take(12)
  end

  def daily_weather
    weather_service.daily_weather_data.map do |data|
      DailyWeather.new(data)
    end.take(5)
  end
  def daily_weather_summary
    weather_info[:daily]
  end
  def hourly_weather_summary
    weather_info[:hourly]
  end

  private
    def coord_service
      CoordinateService.new(@location)
    end

    def weather_service
      WeatherService.new(coord_service.get_coordinates)
    end
end
