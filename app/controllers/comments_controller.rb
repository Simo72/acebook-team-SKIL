class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to posts_url
  end

  def index
    @comments = Comment.all
  end

  def show
    @comment=Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
 end
