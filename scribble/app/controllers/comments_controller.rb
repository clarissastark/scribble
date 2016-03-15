class CommentsController < ApplicationController

  #index
  def index
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
    redirect_to @post
  end

  #show
  def show
    @comment = Comment.find(params[:id])
    redirect_to post_comment_path(@comment)
  end

  #edit
  def edit
    @comment = Comment.find(params[:id])
  end

  #update
  def update
    @comment = Comment.find(params[:id])
    @comment.update
    redirect_to post_comment_path(@comment)
  end

  #destroy
  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :tag, :content)
  end

end
