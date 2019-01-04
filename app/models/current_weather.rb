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

  def initialize(current_data)
    @id = id
    @time = current_data[:time]
    @summary = current_data[:summary]
    @icon = current_data[:icon]
    @temperature = current_data[:temperature]
    @feels_like = current_data[:apparentTemperature]
    @humidity = current_data[:humidity]
    @visibility = current_data[:visibility]
    @uv_index = current_data[:uvIndex]
  end
end
