class GamecardsController < ApplicationController
    wrap_parameters format: []

    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    

    def index
        if current_user == nil
            render json: []
        else
            gamecard = current_user.gamecards
            render json: gamecards
        end
    end

    def show
        gamecard = find_gamecard
        render json: gamecard, status: :ok
    end

    def create
        gamecard = Gamecard.new(gamecard_params)
        gamecard.save
        render json: gamecard, status: :created
    end

    def update
        gamecard = find_gamecard
        gamecard.update(gamecard_params)
        render json: gamecard, status: :accepted
    end

    def destroy
        gamecard = find_gamecard
        gamecard.destroy
        head :no_content
    end

    # def increment_credpoints
    #     gamecard = Gamecard.find_by(id: params[:id])
    #     if gamecard
    #         gamecard.update(cred_points: User.cred_points +1)
    #     else
    #         render json: {error: "GameCard not found"}, status: :not_found
    #     end
    # end

    private

    def find_gamecard
        Gamecard.find(params[:id])
        # .find raises an exception, which rescue_from will catch. find_by will return nil and give a different server error. 
    end

    def gamecard_params
        params.permit(:user_id, :game_id, :image, :level_data, :note)
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
