require 'rails_helper'

describe 'login' do
  it 'returns an api key when user logins' do
    post '/api/v1/sessions'

    data = JSON.parse(response.body, symobolize_names: true)
    expect(response.status).to eq(200)
# Content-Type: application/json
# Accept: application/json
#
# {
#   "email": "whatever@example.com",
#   "password": "password"
# }
  end
end
