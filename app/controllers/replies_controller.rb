class RepliesController < ApplicationController
    def create
        @discussion = Discussion.find(params[:discussion_id])
        @reply = @discussion.replies.create(params[:reply].permit(:reply, :user))        
    end
end
