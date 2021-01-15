class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @user.username = current_user.username
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id

    redirect_to user_path(@user)
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def add_points
    @user = User.find(params[:id])
    @user.points += 69
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])

    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :points)
  end
end
