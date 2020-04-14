class SubCategoriesController < ApplicationController
    def index
        @sub_categories= SubCategory.all
    end

    def new
        @sub_category= SubCategory.new
    end
    def create
        @sub_category= SubCategory.new(category_params)
        @sub_category.save
        redirect_to category_path(@sub_category)
    end

    def show
        @sub_category= SubCategory.find(params[:id])
    end
    private
    def category_params
        params.require(:sub_category).permit(:name, :description, :category_id, :sub_category_name)
    end
end
