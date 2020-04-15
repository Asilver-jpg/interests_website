class PostsController < ApplicationController
    before_action :find_post, only:[:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:show]
    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        if @post.valid?
            redirect_to @post
        else flash[:errors] = @post.errors.full_messages
            redirect_to new_post_path(@post)
        end
    end

    def edit
        
    end

    def update
        if @post.update
            redirect_to @post
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to edit_post_path(@post)
        end
    end

    def show
        
    end

    def destroy
        @post.destroy
        flash[:alert] = "Post successfully deleted"
        redirect_to posts_path
    end

    private
    def post_params
        params.require(:post).permit(:body)
    end

    def find_post
        @post = Post.find(params[:id])
    end
end
