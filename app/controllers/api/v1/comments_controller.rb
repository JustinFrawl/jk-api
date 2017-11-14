class Api::V1::CommentsController < ApplicationController

    def index
      @comments = Comment.all
      render json: @comments
    end


    def new
      @comment = Comment.new(comment_params)
    end

    def create
      @comment = Comment.new(comment_params)
      @comment.save
    end

    private
    def comment_params
      params.permit(:text, :post_id)
    end


  end
