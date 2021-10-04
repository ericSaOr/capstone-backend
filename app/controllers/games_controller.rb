class GamesController < ApplicationController
    wrap_parameters format: []

    # rescue_from ActiveRecord: :RecordNotFound, with: :render_not_found_response
    # rescue_from ActiveRecord: :RecordInvalid, with: :render_unprocessable_entity_response

    def index
        games = Game.all
        render json: games, status: :ok 
    end

    def show
        game = find_game
        render json: game, status: :ok
    end

    def create
        game = Game.create(game_params)
        # @current_user.games
        render json: game, status: :created
    end


    def destroy
        game = find_game
        game.destroy
        head :no_content
    end

    

    private

    def find_game
        Game.find(params[:id])
    end

    def game_params
        params.permit(:title, :image, :id)
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
