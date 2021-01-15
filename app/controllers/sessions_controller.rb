class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    sessions[:user_id] = @user.id

    redirect_to user_path(@user)
  end

  def login
  end

  def welcome
  end
end
