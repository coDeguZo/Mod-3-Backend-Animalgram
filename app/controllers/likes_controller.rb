class LikesController < ApplicationController

    def index
        render json: Like.all.as_json(:include => :user)
    end



    def create
        like = Like.create(like_params)
        render json: like, include: [:post, :user]
    end 

    private

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end



end
