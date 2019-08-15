class UserController < ApplicationController
    
    def show
        token = request.headers["Authentication"].split(" ")[1]
        payload = decode(token)
        user = User.find(payload["user_id"])
        if user
          render json: user, status: :accepted
        else
          render json: {message: "Error", authenticated: false}
        end
      end
    
    
    
    def index
        render json: User.all
    end

    # def create 
    #     user = User.find_by(username: params[:username])
    #     if user 
    #         return render json: user
    #     end
    # end

end
