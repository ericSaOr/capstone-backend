class GamesController < ApplicationController
    wrap_parameters format: []

    rescue_from ActiveRecord: :RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord: :RecordInvalid, with: :render_unprocessable_entity_response

    def index
        games = Game.all
        render json: games, status: :ok 
    end

    def show
        game = find_game
        render json: game, status: :ok
    end

    def create
        game = Game.create!(game_params)
        render json: game, status: :created
    end

    def update
        game = find_game
        game.update!(game_params)
        render json: gamecard, status: :accepted
    end

    def destroy
        game = find_game
        game.destroy
        head :no_content
    end

    

    private

    def find_gamecard
        Gamecard.find(params[:id])
    end

    def gamecard_params
        params.permit(:name, :image, :date)
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
