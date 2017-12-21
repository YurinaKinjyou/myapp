class PostController < ApplicationController
  def index
    @post = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      redirect_to("/index")
      flash[:notice] = "編集完了！"
    else
      render("/post/edit")
    end
  end

  def delete
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      redirect_to("/index")
      flash[:notice] = "削除完了！"
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      redirect_to("/index")
      flash[:notice] = "投稿完了！"
    else
      render('post/new')
    end
  end
end
