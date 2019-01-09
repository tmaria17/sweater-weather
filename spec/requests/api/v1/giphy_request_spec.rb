require 'rails_helper'

describe 'GIPHY API' do
  it 'returns gifs based on location weather' do
    VCR.use_cassette("giphy_request") do
      get '/api/v1/gifs?location=denver,co'

      gifs = JSON.parse(response.body, symbolize_names: true)
      
      expect(response.status).to eq(200)
      expect(gifs).to have_key(:data)
    end
  end
end
