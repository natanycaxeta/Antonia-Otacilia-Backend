class UsersController < ApplicationController
    
    def show
        token = request.headers["Authentication"].split(" ")[1]
        payload = decode(token)
        user = User.find(payload["user_id"])
        if user
          render json: user(default_format), status: :accepted
        else
          render json: {message: "Error", authenticated: false}
        end
      end
    
    
    
    def index
        render json: User.all
    end

private

def default_format
  {
    :include => {
      :posts => {
        
      }
    }
  }
end

end
