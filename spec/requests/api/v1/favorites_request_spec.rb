require 'rails_helper'

describe 'Favorite request post' do
  it 'favorites a location' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_params =  {
                'location': 'New York, NY',
                'api_key': "#{user.api_key}"
              }

    post '/api/v1/favorites/', params: favorite_params

    result = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(result[:data][:attributes][:location]).to eq("New York, NY")
    expect(result[:data][:id]).to eq("3")
  end
  it 'does not create an favorite if api key is nil' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_params =  {
                'location': 'New York, NY',
                'api_key': nil
              }

    post '/api/v1/favorites/', params: favorite_params


    expect(response).to_not be_successful
    expect(response.status).to eq(401)
    expect(response.body).to eq("Unauthorized")
  end
end
