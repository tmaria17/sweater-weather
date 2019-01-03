require 'rails_helper'

describe 'account creation'do
  it 'returns an api ket to user'do
    user_info =
    {
      email: "whatever@example.com",
      password: "password",
      password_confirmation: "password"
    }
    user = User.new(user_info)
    post '/api/v1/users/', params: user_info
    user_results = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(200)
  end
end
