class SearchController < ApplicationController
def new


end

def create
  
search_param= params[:search]
session[:profiles]= Profile.search(search_param)
session[:categories]= Category.search(search_param)
session[:sub_categories]= SubCategory.search(search_param)

if search_param ==""
    redirect_to search_results_path(" ")  
else
redirect_to search_results_path(search_param)
end
end

def show

@profiles= session[:profiles]
@categories=session[:categories]
@sub_categories= session[:sub_categories]
end

private
def search_params
    params.require(:search).permit(:search)
end



end