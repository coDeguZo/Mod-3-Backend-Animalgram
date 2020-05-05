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

    def follows
        user = User.find(params[:id])
        user_follows = user.followed.map{|fo| User.find(fo.follower_id)}
        render json: user_follows.as_json
    end
end
