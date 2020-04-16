class PostsController < ApplicationController
    before_action :find_post, only:[:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:show]
    def new
        @post = Post.new
    end

    def create

        @post = Post.new
        @post.body= params[:post][:body]
        @post.topic_thread_id= flash[:current_thread]
        @post.profile_id=session[:profile_id]
        if @post.valid?
            @post.save
            redirect_to topic_thread_path(flash[:current_thread])
        else flash[:errors] = @post.errors.full_messages
            redirect_to topic_thread_path(flash[:current_thread])
        end
    end

    def edit
        @post = Post.find(params[:id])

    if @post.profile.id == @current_profile
    else
      flash[:error] = "You can only edit your own posts"
      redirect_to post_path(@post)
    end 
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
