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
  8.times do |game_number|
    user_game = UserGame.new(
      game_number: params[:user_games][game_number]["game_number"], 
      user_pick: params[:user_games][game_number]["user_selection"], 
      user_id: current_user.id, 
      points_awarded: params[:user_games][game_number]["points_awarded"],
    )
    user_game.save
  end

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
