require 'rails_helper'
describe GifService do
  it 'exists' do
    gif_service = GifService.new("Dogs")
    expect(gif_service).to be_a(GifService)
  end
  it 'returns GIF data' do
    gif_service = GifService.new("Dogs")
    expect(gif_service).to be_a(GifService)
    # binding.pry
    expect(gif_service.get_gif_data).to have_key(:data)
    expect(gif_service.get_gif_data[:data][0]).to have_key(:type)
    expect(gif_service.get_gif_data[:data][0]).to have_key(:url) 
  end
end
