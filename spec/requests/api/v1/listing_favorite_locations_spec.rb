require 'rails_helper'
describe 'Get Favorites' do
  it 'lists favorite locations' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_1 = user.favorites.create(location: 'Denver, CO')
    favorite_2 = user.favorites.create(location: 'Allen, TX')
    favorite_params =  {
                'api_key': "#{user.api_key}"
              }

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    get '/api/v1/favorites/', params: favorite_params
    results = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(results).to have_key(:data)
    expect(results[:data][0]).to have_key(:attributes)
    expect(results[:data][0][:attributes]).to have_key(:location)
    expect(results[:data][0][:attributes]).to have_key(:current_weather)
  end
end
