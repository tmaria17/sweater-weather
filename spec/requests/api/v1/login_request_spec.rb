require 'rails_helper'
describe 'login' do
  it 'returns an api key when user logins' do
    user_info =
    {
      email: "helloworld1@example.com",
      password: "password",
      password_confirmation: "password"
        }

    user = User.create!(user_info)

    post '/api/v1/sessions/', params: user_info
    
    data = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(200)
    expect(data[:data][:attributes]).to have_key(:api_key)
    expect(data[:data][:attributes]).to_not eq(nil)
  end
end
