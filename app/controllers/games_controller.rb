class GamesController < ApplicationController

  def index
    @games = Game.all
    render template: "games/index"
  end



end
