class SubCategoriesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def index
        @sub_categories= SubCategory.all
    end

    def new
        @sub_category= SubCategory.new
    end

    def create
        @sub_category= SubCategory.new(sub_category_params)
        @sub_category.save
        redirect_to sub_category_path(@sub_category)
    end

    def show
        @sub_category= SubCategory.find_by(params[:id])
    end

    private

    def sub_category_params
        params.require(:sub_category).permit(:name, :description, :category_id)
    end
end
