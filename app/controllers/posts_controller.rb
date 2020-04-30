class PostsController < ApplicationController

        def index
            render json: Post.all.as_json(:include => :comments)
        end 

        def show
            post = Post.find_by(id: params[:id])
            render json: post, include: [:comments]
        end

        def create
            post = Post.create(post_params)
            render json: post, include: :comments
        end 

        def destroy
            post = Post.find_by(id: params[:id])
            post.destroy
            render json: post
        end

        private

        def post_params
            params.require(:post).permit(:user_id, :location, :post_text, :graphic_url)
        end
    
    
end
