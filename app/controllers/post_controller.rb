class PostController < ApplicationController

    def index

        render json: Post.all
          
    end

    def show
        @post = Post.find(params[:id])
        render json: @post

    end

    def create 
        @post = Post.create(strong_params)
        render json: @post
    end

private
     
    def strong_params
        params.require(:post).permit(:name, :description, :likes, :address, :contact, :tipo) 
    end
    
end
