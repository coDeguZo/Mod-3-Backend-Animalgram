class UsersController < ApplicationController

    def index
        # users = User.all
        render json: User.all.as_json(:include => [:posts, :followed, :followers])
    end 

    def show   
        user = User.find(params[:id])
        render json: user.as_json(:include => [:posts, :followed, :followers] )
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
