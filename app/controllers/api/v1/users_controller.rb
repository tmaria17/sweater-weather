class Api::V1::UsersController < ApplicationController
  def create
    user = User.create(strong_params)
    user[:api_key] = user.user_key
    user.save
    render json: UserSerializer.new(user), status:201
  end

  def new
  end
  private
    def strong_params
      params.permit(:email, :password, :password_confirmation)
    end
end
