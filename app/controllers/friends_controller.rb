class FriendsController < ApplicationController
    def index
        render json: Friend.all.as_json(:include => [:follower, :follow])
    end

    
    def show
        user = User.find(params[:id])
        user_followers = user.followers.map{|fo| User.find(fo.follow_id)}
        user_follows = user.followed.map{|fo| User.find(fo.follower_id)}
        render json: user_followers.as_json
    end

    def create
        friend = Friend.create(friend_params)
        render json: friend, include: [:user, :follow]
    end

    def follows
        user = User.find(params[:id])
        user_follows = user.followed.map{|fo| User.find(fo.follower_id)}
        render json: user_follows.as_json
    end

    private
    def friend_params
        params.require(:friend).permit(:follower_id, :follow_id)
    end
end
