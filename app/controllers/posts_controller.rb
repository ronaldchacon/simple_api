class PostsController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

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
