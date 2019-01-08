class Api::V1::FavoritesController < ApplicationController
  def create
    if current_user
      favorite = Favorite.create(user_id: current_user.id, location: params[:location])
      render json: FavoriteSerializer.new(favorite)
    else
      render body: 'Unauthorized', status: 401
    end
  end
end
