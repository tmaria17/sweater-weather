class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    render json: UserSerializer.new(user)
  end
end
