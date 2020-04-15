class SubCategoriesController < ApplicationController
    def index
        @sub_categories= SubCategory.all
    end

    def new
        @sub_category= SubCategory.new
    end

    def create
        @sub_category= SubCategory.new(sub_category_params)
        @sub_categoyr.save
        redirect_to sub_category_path(@
    end

    def show
        @sub_category= SubCategory.find_by(params[:id])
    end

    private

    def sub_category_params
        params.require(:sub_category).permit(:name, :description, :category_id)
    end
end
