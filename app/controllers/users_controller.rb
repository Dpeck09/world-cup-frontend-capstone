class UsersController < ApplicationController

  # before_action :authenticate_user, except: :create

 def index
  @user = User.all
  render json: @user.as_json
 end



def show
  @user = current_user
  render template: "users/show"
end



def create
  user = User.new(
    email: params[:email],
    username: params[:username],
    bracket_made: params[:bracket_made],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )
  if user.save
    render json: { message: "User created successfully" }, status: :created
  else
    render json: { errors: user.errors.full_messages }, status: :bad_request
  end
end






def update
  @user = User.find_by(id: params[:id])
  @user.email = params[:email] || @user.email
  @user.username = params[:username] || @user.username
  @user.bracket_made = params[:bracket_made] || @user.bracket_made
  @user.password_digest = params[:password_digest] || @user.password_digest

  @user.save

  render json: user.as_json
end




def destroy
  user = User.find_by(id: params[:id])

  user.destroy
  render json: user.as_json
end




end
