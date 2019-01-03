class ForecastFacadeSerializer
  include FastJsonapi::ObjectSerializer
  set_id :location
  attributes :current_weather, :daily_weather_summary, :daily_weather,
             :hourly_weather_summary, :hourly_weather
end
