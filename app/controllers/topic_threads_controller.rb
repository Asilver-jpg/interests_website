class TopicThreadsController < ApplicationController
    skip_before_action :authorized, only: [:show]
    def new
        @topic_thread= TopicThread.new
    end

    def create
        @topic_thread= TopicThread.new(topic_thread_params)
        @topic_thread.views=0
        @topic_thread.sub_category_id= session[:current_sub_category]
        @topic_thread.profile_id= session[:profile_id]
        
        if @topic_thread.valid?
        
        @topic_thread.save
       
        redirect_to topic_thread_path(@topic_thread)
        else
            flash[:errors] = @topic_thread.errors.full_messages
            redirect_to new_topic_thread_path
        end
            
        end
    

    def show
        @topic_thread= TopicThread.find(params[:id])
        @new_views = @topic_thread.views.to_i + 1
        @topic_thread.update_attribute(:views, @new_views)
        @post= Post.new
        
    end

    def destroy
        @topic_thread= TopicThread.find(params[:id])
        @topic_thread.destroy
        redirect_to sub_category_path(session[:current_sub_category])
    end
    private

    def topic_thread_params
        params.require(:topic_thread).permit(:title, :description, :views, :sub_category_id, :profile_id)
    end
end
