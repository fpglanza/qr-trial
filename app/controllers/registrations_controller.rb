class RegistrationsController < ApplicationController

  def profile_sign_up
    @user = current_user
    if @user
      render :profile_sign_up
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
  end

  def after_sign_up_path_for(resource)
    @user = current_user
    profile_sign_up_path event: :authentication
  end
end
