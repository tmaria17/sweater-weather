require 'rails_helper'
describe 'delete Favorites' do
  it 'delete favorite locations' do
    user = User.create(email: 'ABurr@president.com', password: 'Hamilton', password_confirmation: 'Hamilton')
    favorite_1 = user.favorites.create(location: 'Denver, CO')
    favorite_2 = user.favorites.create(location: 'Allen, TX')
    params =  {
                'api_key': "#{user.api_key}"
              }

    delete "/api/v1/favorites?location=Allen, TX&api_key=#{user.api_key}"

    expect(response).to be_successful
    expect(user.favorites.count).to eq(1)
  end
end
