class GamesController < ApplicationController

  def index
    @games = Game.order(:game_number)
    render template: "games/index"
  end





end
