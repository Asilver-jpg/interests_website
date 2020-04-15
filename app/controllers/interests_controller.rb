class InterestsController < ApplicationController
    def create
        Interests.create(interest_params)
    end


    private
    def interest_params
        params.require(:interest).permit(:profile_id, :sub_category_id)
    end
end
