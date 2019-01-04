require 'rails_helper'

describe 'account creation'do
  it 'returns an api key to user'do
    user_info =
    {
      email: "whateverforever@example.com",
      password: "password",
      password_confirmation: "password"
    }
    user = User.new(user_info)
    post '/api/v1/users/', params: user_info
    user_results = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)
    expect(user_results[:data]).to have_key(:attributes)
    expect(user_results[:data][:attributes]).to have_key(:api_key)
    expect(user_results[:data]).to have_key(:id)
  end
end
