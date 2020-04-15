class ApplicationController < ActionController::Base
    before_action :get_current_profile
    before_action :authorized

  def get_current_profile 
    @current_profile = Profile.find_by(id: session[:profile_id])
  end 

  def authorized
    if !(@current_profile)
      flash[:errors] = ["must be logged in to see that page"]
      redirect_to login_path
    end 
    
  end 
end
