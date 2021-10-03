class SessionsController < ApplicationController
    
  def create
    byebug
    user = User.find_or_create_by(user_name: params[:user_name])
    byebug
    session[:user_id] = user.id
    byebug
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end