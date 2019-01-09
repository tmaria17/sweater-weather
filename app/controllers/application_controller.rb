# require 'rails_helper'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :current_user

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize_user
    user = User.find_by(api_key: params[:api_key])
    unless user
       render json: "Unauthorized", status: 401
    end
  end

end
