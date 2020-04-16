class ProfilesController < ApplicationController
    before_action :find_profile, only:[:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create, :index, :show]
    def new
        @profile = Profile.new
      
    end

    def create
      profile = Profile.create(profile_params)
      if profile.valid? 
      session[:profile_id] = profile.id 
      redirect_to new_interest_path
    else
      flash[:errors] = profile.errors.full_messages
      redirect_to new_profile_path 
    end
    end

    def edit
    @profile = Profile.find(params[:id])

    if @profile == @current_profile
    else
      flash[:error] = "You can only edit your profile"
      redirect_to profile_path(@profile.id)
    end 
    end

    def update
        if @profile.update
            redirect_to @profile
        else
            flash[:errors] = @profile.errors.full_messages
            redirect_to edit_profile_path(@profile)
        end
    end

    def show
        
    end

    def index
        @profiles = Profile.all
    end

    def destroy
        @profile.destroy
        flash[:alert] = "Profile successfully deleted"
        redirect_to profiles_path
    end

    private
    def profile_params
        params.require(:profile).permit(:name, :age, :username, :zip_code, :password)
    end

    def find_profile
        @profile = Profile.find(params[:id])
    end
end