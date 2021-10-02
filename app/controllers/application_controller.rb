class ApplicationController < ActionController::Base
    protect_from_forgery unless: -> { request.format.json? }
    include ActionController::Cookies
    def current_user
        User.find_by(id: session[:user_id])
    end
end
