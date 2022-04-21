class UsersController < ApplicationController

 def index
  user = User.all
  render json: user.as_json
 end

def show
  user = User.find_by(id: params[:id])
  render json: user.as_json
end

def create
  user = User.new(
    email: params[:email],
    username: params[:username],
    bracket_made: params[:bracket_made],
    password_digest: params[:password_digest]
  )
  user.save

  render json: user.as_json
end


def update
  user = User.find_by(id: params[:id])
  user.email = params[:email] || user.email
  user.username = params[:username] || user.username
  user.bracket_made = params[:bracket_made] || user.bracket_made
  user.password_digest = params[:password_digest] || user.password_digest

  user.save

  render json: user.as_json
end

def destroy
  user = User.find_by(id: params[:id])

  user.destroy
  render json: user.as_json
end


end
