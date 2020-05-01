class FriendsController < ApplicationController
    def index
        render json: Friend.all.as_json(:include => [:follower, :follow])
    end
end
