class CommentsController < ApplicationController

    def index 
        render json: Comment.all
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :comment_text)
    end


end
