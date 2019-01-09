require 'rails_helper'
describe 'Get Favorites' do
  it 'lists favorite locations' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_1 = user.favorites.create(location: 'Denver, CO')
    favorite_2 = user.favorites.create(location: 'Allen, TX')
    favorite_params =  {
                'api_key': "#{user.api_key}"
              }

    get '/api/v1/favorites/', params: favorite_params
    results = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(results).to have_key(:data)
    expect(results[:data][0]).to have_key(:attributes)
    expect(results[:data][0][:attributes]).to have_key(:location)
    expect(results[:data][0][:attributes]).to have_key(:current_weather)
  end
  it "does not list locations if user doesn't have a correct api key" do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_1 = user.favorites.create(location: 'Denver, CO')
    favorite_2 = user.favorites.create(location: 'Allen, TX')
    favorite_params =  {
                'api_key': "abc"
              }

    get '/api/v1/favorites/', params: favorite_params

    expect(response).to_not be_successful
    expect(response.status).to eq(401)
    expect(response.body).to eq("Unauthorized")
  end
end
