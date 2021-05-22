class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to root_path, notice: "ブログを作成しました！"
    else
      # 入力フォームを再描画します。
      render :new
    end
  end

  def show
  end

  def updated
  end

  def destroy
  end



  private
  def post_params
    params.require(:post).permit(:picture, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
