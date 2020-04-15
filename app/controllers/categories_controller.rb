class CategoriesController < ApplicationController
skip_before_action :authorized, only: [:index, :show]
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end


end
