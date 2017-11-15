class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def new
    @category = Category.new(category_params)
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  private
  def category_params
    params.permit(:name, :posts)
  end


end
