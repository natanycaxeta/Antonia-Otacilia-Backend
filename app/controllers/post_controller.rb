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

    def destroy
        #want to remove the cat with id, and send back cat
        Post.find(params[:id]).destroy
        # render json: 
      end

private
     
    def strong_params
        params.require(:post).permit(:name, :description, :likes, :address, :contact, :tipo) 
    end
    
end
