class AuthController < ApplicationController

    def create # POST /api/v1/login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          posts = @user.posts
          #where user exists AND password is a match
          #send back the user data, and a token
          payload = {"user_id": @user.id}
          token = encode(payload)
          render json: {
            user: @user,
            posts: posts,
            token: token,
            authenticated: true
          }
        else
          #where user doesn't exist OR the password isn't correct
          render json: {
            message: "Username and Password doesn't match",
            authenticated: false
          }
        end
      end
    
    end


