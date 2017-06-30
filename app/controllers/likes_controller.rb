class LikesController < ApplicationController

  before_action :require_login, only: [:create, :new]

  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    redirect_to posts_url
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to posts_url
  end

  private

  def like_params
    params.permit(:user_id, :post_id)
  end

end
