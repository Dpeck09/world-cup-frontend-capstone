class UserGamesController < ApplicationController

def index
  ug = UserGame.all
  render json: ug.as_json
end

end
