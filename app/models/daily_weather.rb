class DailyWeather
  attr_reader :icon,
              :temp_high,
              :temp_low,
              :time,
              :chance_of_rain,
              :id

  def initialize(daily_data)
    @id = id
    @summary = daily_data[:summary]
    @icon = daily_data[:icon]
    @time = daily_data[:time]
    @temp_high = daily_data[:temperatureHigh]
    @temp_low = daily_data[:temperatureLow]
    @chance_of_rain = daily_data[:precipProbability]
  end
end
