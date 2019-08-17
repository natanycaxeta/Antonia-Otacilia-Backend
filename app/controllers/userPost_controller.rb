class UserPostController < ApplicationController
    
    
    def index
        render json: UserPosts.all
    end


end