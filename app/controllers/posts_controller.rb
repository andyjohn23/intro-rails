class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, except: [:created_at, :updated_at]
    end

    def show
        post = Post.find(params[:id])
        render json: post, except: [:created_at, :updated_at]
    end

    def create
        post = Post.create(post_params)
        render json: post
    end

    def update
        post = Post.find(params[:id])
        if post
           post.update(post_params)
           render json: post
        else
           render json: { error: "Post not found" }, status: :not_found
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        head :no_content
    end
       
    private

    def post_params
        params.permit(:title, :description, :rate)
    end
end
