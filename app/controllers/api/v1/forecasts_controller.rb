class Api::V1::ForecastsController < ApplicationController
  def show
    render json: ForecastFacadeSerializer.new(ForecastFacade.new(params[:location]))
  end
end
