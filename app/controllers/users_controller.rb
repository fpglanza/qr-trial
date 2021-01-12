class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(params[:user])
    @user.save

    redirect_to user_path(@user)
  end

  def addpoints
    @user = User.find(params[:id])
    @user.points += 69
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])

    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :points)
  end
end
