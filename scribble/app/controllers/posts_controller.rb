class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
  end

  #new
  def new
    @posts = Post.new
  end

  #create
  def create
    @posts = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  #show
  def show
    @posts = Post.find(params[:id])
  end

  #edit
  def edit
    @posts = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end


  #update
  def update
    @posts = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:author, :content, :tag)
  end

end
