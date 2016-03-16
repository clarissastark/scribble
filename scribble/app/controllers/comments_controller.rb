class CommentsController < ApplicationController

  #index
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.all
    @comment = Comment.new
  end

  #new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  #create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_url(@post)
  end

  #show
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    redirect_to post_url(@post)
  end

  #edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  #update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_url(@post)
  end

  #destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_url(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :tag, :content, :post_id)
  end

end
