class PostsController < ApplicationController


    def index
        @posts= Category.all
    end

    def new
        @post= Post.new
    end
    def create
        @post= Post.new(post_params)
        @post.save
        redirect_to category_path(@post)
    end

    def show
        @post= Post.find(params[:id])

    end
    private
    def category_params
        params.require(:post).permit(:name)
    end
end
