require 'rails_helper'

describe 'login' do
  it 'returns an api key when user logins' do
    user_info =
    {
      email: "whateverforever@example.com",
      password: "password",
      password_confirmation: "password"
    }

    user = User.new(user_info)
    post '/api/v1/sessions', params: user_info

    data = JSON.parse(response.body, symobolize_names: true)
    expect(response.status).to eq(200)
    expect(data["data"]["attributes"]).to have_key("api_key")
  end
end
