class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @posts = Post.all
    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  def create
    respond_with Post.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :url)
  end
end
