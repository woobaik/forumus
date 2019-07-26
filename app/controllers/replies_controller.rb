class RepliesController < ApplicationController
    before_action :authenticate_user!, only: [:create, :destroy]
    def create
        @discussion = Discussion.find(params[:discussion_id])
        @reply = @discussion.replies.create(params.require(:reply).permit(:reply))        
        @reply.user_id = current_user.id
        respond_to do |format| 
            if @reply.save
                format.js { render :create }
            else
                format.html { render 'discussion#show' }
            end
        end
    end
end
