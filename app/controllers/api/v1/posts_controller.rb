class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  private
  def post_params
    params.permit(:text, :category_id)
  end



end
