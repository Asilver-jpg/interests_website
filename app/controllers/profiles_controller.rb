class ProfilesController < ApplicationController
    before_action :find_profile, only:[:show, :edit, :update, :destroy]
    def new
        @profile = Profile.new
    end

    def create
        if @profile.valid?
            @profile.create(profile_params)
            redirect_to @profile
        else flash[:errors] = @profile.errors.full_messages
            redirect_to new_profile_path(@profile)
        end
    end

    def edit
        
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
        params.require(post).permit(:name, :age, :username, :zip_code)
    end

    def find_profile
        @profile = Profile.find(params[:id])
    end
end