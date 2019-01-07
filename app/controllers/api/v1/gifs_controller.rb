class Api::V1::GifsController < ApplicationController
  def index
    forecast = ForecastFacade.new(params[:location])

    gifs = forecast.daily_weather.map do |data|
      gif_service = GifService.new(data.icon)
      Gif.new(data.time, data.summary, gif_service.get_url)
    end

    render json: GifSerializer.new(gifs)
  end
end
