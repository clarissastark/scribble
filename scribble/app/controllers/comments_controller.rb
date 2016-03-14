class CommentsController < ApplicationController

#index
  def index
    @comments = Comment.all
  end

#new
  def new
    @comments = Song.new
  end

end
