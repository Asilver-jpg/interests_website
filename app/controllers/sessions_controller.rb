class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
  def new
  end 

  def create 
    profile = Profile.find_by(username: params[:session][:username])

    if profile && profile.authenticate(params[:session][:password])
      session[:profile_id] = profile.id
      redirect_to profile 
    else 
      flash[:errors] = ["username or password is not right"]

      redirect_to new_profile_path
      # redirect_back fallback_location: new_profile_path
    end 
  end 

  def destroy 
    # session[:user_id] = nil
    session.delete(:profile_id)
    redirect_to categories_path
  end 
end
