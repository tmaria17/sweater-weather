class HourlyWeather
  attr_reader :id,
              :time,
              :icon,
              :temperature,
              :summary
  def initialize(hourly_data)
    @id          = id
    @time        = Time.at(hourly_data[:time].to_i).strftime('%I:%M %p')
    @icon        = hourly_data[:icon]
    @summary     = hourly_data[:summary]
    @temperature = hourly_data[:temperature]
  end
end
