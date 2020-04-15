class TopicThreadsController < ApplicationController
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
        
    end

    private

    def topic_thread_params
        params.require(:topic_thread).permit(:title, :description, :views, :sub_category_id, :profile_id)
    end
end
