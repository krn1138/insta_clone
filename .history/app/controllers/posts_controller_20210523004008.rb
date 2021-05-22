class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to new_post_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def updated
  end

  def destroy
  end



  private
  def post_params
    params.require(:post).permit(:picture, :content)
  end
end
