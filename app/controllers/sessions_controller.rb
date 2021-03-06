class SessionsController < ApplicationController
    
  def create
    user = User.find_or_create_by(user_name: params[:user_name])
    session[:user_id] = user.id
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end