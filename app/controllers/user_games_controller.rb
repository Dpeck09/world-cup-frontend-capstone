class UserGamesController < ApplicationController

def index
  @user_games = UserGame.all
  render json: @user_games.as_json
end


def show
  the_id = params[:id]
  @user_games = UserGame.find_by(id: the_id)
  render json: @user_games.as_json
end


def create
  p params[:user_games][0]["user_selection"]
  user_game = UserGame.new(
    game_number: params[:user_games][0]["game_number"], 
    user_pick: params[:user_games][0]["user_selection"], 
    user_id: 10, 
    points_awarded: params[:user_games][0]["points_awarded"], 
  )
  user_game.save

  # user_games = UserGame.new(
  #   user_pick: params[:user_pick],
  #   user_id: params[:user_id],
  # )

  # if user_games.save
  #   render json: { message: "user_games created successfully" }, status: :created
  # else
  #   render json: { errors: user_games.errors.full_messages }, status: :bad_request
  # end
end

end
