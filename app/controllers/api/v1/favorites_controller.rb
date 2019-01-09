class Api::V1::FavoritesController < ApplicationController
  before_action :authorize_user

  def create
    favorite = Favorite.create(user_id: user.id, location: params[:location])
    render json: FavoriteSerializer.new(favorite)
  end

  def index
    favorites = user.favorites
    render json: FavoriteSerializer.new(favorites)
  end

  private

  def user
    User.find_by(api_key: params[:api_key])
  end
end
