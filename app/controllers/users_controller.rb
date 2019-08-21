class UsersController < ApplicationController
    
    def home
        token = request.headers["Authentication"].split(" ")[1]
        payload = decode(token)
        user = User.find(payload["user_id"])
        if user
          render json: user, status: :accepted
        else
          render json: {message: "Error", authenticated: false}
        end
      end

      def show
        @user = User.find(params[:id])
        render json: @user.to_json(:include => {
        :posts => {:only => [:id, :name, :description, :address, :contact, :tipo]}
      })
      end
    
    
    
    def index
      render json: User.all.to_json(:include => {
        :posts => {:only => [:id, :name, :description, :address, :contact, :tipo]}
    })
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
