require 'rails_helper'
describe GifService do
  it 'exists' do
    VCR.use_cassette("giphy_service") do
      gif_service = GifService.new("Dogs")
      
      expect(gif_service).to be_a(GifService)
    end
  end
  it 'returns GIF data' do
    VCR.use_cassette("gihpy_service") do
      gif_service = GifService.new("Dogs")

      expect(gif_service).to be_a(GifService)
      expect(gif_service.get_gif_data).to have_key(:data)
      expect(gif_service.get_gif_data[:data][0]).to have_key(:type)
      expect(gif_service.get_gif_data[:data][0]).to have_key(:url)
    end
  end
end
