class WeatherService
  def initialize(coordinates)
    @coordinates = coordinates
  end

  # def weather_info
  #   weather_service.get_weather
  # end

  def current_weather_data
    get_weather[:currently]
  end

  def daily_weather_data
    get_weather[:daily][:data]
  end

  def hourly_weather_data
    get_weather[:hourly][:data]
  end

  def get_weather
    get_json("/forecast/#{ENV['DARK_SKY_KEY']}/#{@coordinates[:lat]},#{@coordinates[:lng]}?exclude=minutely")
  end

  private

    def conn
      url = "https://api.darksky.net"
      Faraday.new(url: url) do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json(url)
      JSON.parse(conn.get(url).body, symbolize_names: true)
    end
end
