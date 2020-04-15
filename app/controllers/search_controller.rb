class SearchController < ApplicationController
def new


end

def create
search_param= params[:search][:term]
@profiles= Profile.search(search_param)
@categories= Category.search(search_param)
@sub_categories= SubCategory.search(search_param)
redirect_to search_results
end

def show

end
end