class PostController < ApplicationController
  def index
    @post = Post.all
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
    else
      render("/post/edit")
    end
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/index")
  end

  def new

  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      redirect_to("/index")
    else
      render('post/new')
    end
  end
end
