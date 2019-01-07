class HourlyWeather
  attr_reader :id,
              :time,
              :icon,
              :temperature,
              :summary
  def initialize(data)
    @id          = id
    @time        = DateTime.strptime(data[:time].to_s, '%s')
    @icon        = data[:icon]
    @summary     = data[:summary]
    @temperature = data[:temperature]
  end
end
