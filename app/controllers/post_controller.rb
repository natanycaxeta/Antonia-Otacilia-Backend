class PostController < ApplicationController

    def index

        render json: Post.all
          
    end

    def show
        @post = Post.find(params[:id])
        render json: @post

    end

    def update
        #want to update the cat with id, and send back cat
        Post.find(params[:id]).update(strong_params)
        render json: Post.find(params[:id]).to_json(strong_params)
      end

    def create 
        @post = Post.create(strong_params)
        render json: @post
    end

    def destroy
        #want to remove the cat with id, and send back cat
        @post = Post.find(params[:id]).destroy
        render json: @post
      end

private
     
    def strong_params
        params.require(:post).permit(:name, :description, :likes, :address, :contact, :tipo) 
    end
    
end
