class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to new_post_path
  end

  private
  def post_params
    params.require(:post).permit(:picture, :content)
  end
end
