require 'rails_helper'

describe 'Favorite request post' do
  it 'favorites a location' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_params =  {
                'location': 'New York, NY',
                'api_key': "#{user.api_key}"
              }

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    post '/api/v1/favorites/', params: favorite_params

    data = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(data[:data][:attributes][:location]).to eq("New York, NY")
    expect(data[:data][:id]).to eq("1")
    expect(data[:data][:attributes][:user_id]).to eq(user.id)
  end
end
