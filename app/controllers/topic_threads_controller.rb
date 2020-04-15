class TopicThreadsController < ApplicationController
    def new
        @topic_thread= TopicThread.new
    end

    def create
        @topic_thread= TopicThread.new(topic_thread_params)
        @topic_thread.save
        redirect_to topic_thread+path(@topic_thread)
    end

    def show
        @topic_thread= TopicThead.find_by(params[:id])
    end

    private

    def topic_thread_params
        params.require(:topic_thread).permit(:title, :description, :views, :sub_category_id, :profile_id)
    end
end
