class UsersController < ApplicationController
    wrap_parameters format: []

    rescue_from ActiveRecord: :RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord: :RecordInvalid, with: :render_unprocessable_entity_response

    def show
        user = find_user
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end


    private

    def find_user
        User.find(params[:id])
        # .find raises an exception, which rescue_from will catch. find_by will return nil and give a different server error. 
    end

    def user_params
        params.permit(:user_name, :password)
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages },
        status: :unprocessable_entity
    end

    def render_not_found_response(exception)
        render json: {error: "#{exception.model} not found"},
        status: :not_found
    end

end
