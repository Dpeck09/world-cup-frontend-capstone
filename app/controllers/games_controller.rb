class GamesController < ApplicationController

  def index
    game = Game.all
    render json: game.as_json
  end



end
