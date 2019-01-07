require 'rails_helper'

describe 'GIPHY API' do
  it 'returns gifs based on location weather' do
    VCR.use_cassette("giphy_request") do
      get '/api/v1/gifs?location=denver,co'


      gifs = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(200)
      expect(gifs).to have_key(:data)
      # expect(gifs[:data]).to have_key(:daily_forecasts)
      # expect(gifs[:data]).to have_key(:copy_right)
      # expect(gifs[:data][:daily_forecasts][0]).to have_key(:time)
      # expect(gifs[:data][:daily_forecasts][0]).to have_key(:summary)
      # expect(gifs[:data][:daily_forecasts][0]).to have_key(:url)
    end
  end
end
