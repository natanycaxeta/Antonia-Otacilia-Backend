class PostController < ApplicationController

    def index
        @posts = Post.all
        render json: Post.all
    end
end
