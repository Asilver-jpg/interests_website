class InterestsController < ApplicationController
    def new
        @interest = Interest.new
    end
    
    def create
        params[:subcategories].each do |subcategory|
            @interest = Interest.create(sub_category_id: subcategory.to_i, profile_id: @current_profile.id)
        end 
        if  @interest 
            redirect_to @current_profile
        else
            flash[:errors] = interest.errors.full_messages
            redirect_to new_interest_path 
    end
    
    end


    private
    def interest_params
        params.require(:interest).permit(:profile_id, :sub_category_id, :subcatergories)
    end
end
