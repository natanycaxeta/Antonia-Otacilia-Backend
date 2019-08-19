class UserPostController < ApplicationController
    
    
    def index
        render json: UserPost.all
    end

    def create
        @user_post = UserPost.create(strong_params)
        render json: @user_post
    end

    private
     
    def strong_params
        params.require(:user_post).permit(:user_id, :post_id) 
    end

end