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
  @posts = Post.create!

end
