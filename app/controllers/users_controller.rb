class UsersController < ApplicationController

    def index
        # users = User.all
        render json: User.all.as_json(:include => [:posts, :followed, :followers])
    end 

    def show   
        user = User.find(params[:id])
        # user_followers = user.followers.map{|fo| User.find(fo.follow_id)}
        # user_follows = user.followed.map{|fo| User.find(fo.follower_id)}
       
        render json: user.as_json(:include => [:posts, :followed, :followers] )
    end

    def people
        render json: User.all.as_json
    end

    
    def create
        user = User.create(user_params)
        render json: user.as_jason(:include => "posts")
    end 

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user 
    end 

    


    private
    def user_params
        params.require(:user).permit(:username, :fullname, :bio)
    end


end
