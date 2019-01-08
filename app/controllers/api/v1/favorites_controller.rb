class Api::V1::FavoritesController < ApplicationController
  def create
    if current_user
      Favorite.create(user_id: current_user.id, location: params[:location])
    else
      render body: 'Unauthorized', status: 401
    end
  end
end
