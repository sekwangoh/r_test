class TestController < ApplicationController
  def index
      @posts = Post.all
  end

  def new
  end

  def create
      post = Post.new
      post.title = params[:title]
      post.content = params[:content]
      post.save
      redirect_to '/'
  end

  def show
      @post = Post.find(params[:post_id])
  end

  def edit
      @post = Post.find(params[:post_id])
  end

  def update
      post = Post.find(params[:post_id])
      post.title = params[:title]
      post.content = params[:content]
      post.save
      redirect_to '/'
  end
  
  def delete
      Post.destroy(params[:post_id])
      redirect_to '/'
  end

end
