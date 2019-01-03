class ForecastFacade
  def initialize(location)
    @location = location
  end
  def weather_info
    weather_service.get_weather
  end
  def current_weather
    weather_info[:currently]
  end

  def daily_weather_summary
    weather_info[:daily]
  end

  def daily_weather
    weather_info[:daily][:data]
  end

  def hourly_weather_summary
    weather_info[:hourly]
  end

  def hourly_weather
    weather_info[:hourly][:data]
  end

  private
    def coord_service
      CoordinateService.new(@location)
    end

    def weather_service
      WeatherService.new(coord_service.get_coordinates)
    end
end
