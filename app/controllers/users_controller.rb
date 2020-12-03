class UsersController < ApplicationController
  include UsersHelper
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token, status: :created }
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:user][:email])

    if @user && @user.authenticate(params[:user][:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token, logged_in: true}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  # def user_params
  #   params.permit(:username, :password, :age)
  # end
end
