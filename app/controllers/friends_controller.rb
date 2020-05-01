class FriendsController < ApplicationController
    def index
        render json: Friend.all.as_json
    end
end
