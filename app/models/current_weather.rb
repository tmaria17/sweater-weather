class CurrentWeather
  attr_reader :time,
              :summary,
              :icon,
              :temperature,
              :feels_like,
              :humidity,
              :visibility,
              :uv_index,
              :id

  def initialize(weather_hash)
    @id = id
    @time = weather_hash[:time]
    @summary = weather_hash[:summary]
    @icon = weather_hash[:icon]
    @temperature = weather_hash[:temperature]
    @feels_like = weather_hash[:apparentTemperature]
    @humidity = weather_hash[:humidity]
    @visibility = weather_hash[:visibility]
    @uv_index = weather_hash[:uvIndex]
  end
end
