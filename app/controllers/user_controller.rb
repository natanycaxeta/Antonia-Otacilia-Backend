class UserController < ApplicationController
    def index
        render json: User.all
    end

    def create 
        user = User.find_by(username: params[:username])
        if user 
            return render json: user
        end
    end

end
