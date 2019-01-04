class Api::V1::GifsController < ApplicationController
  def index
    forecast = ForecastFacade.new(params[:location])
    gif_service = GifService.new(forecast.daily_weather[0].icon)
    gifs = forecast.daily_weather.map do |data|
      Gif.new(data.time, data.icon, gif_service.get_gif_data[:data][0][:url])
    end

    render json: GifSerializer.new(gifs)
  end
end
