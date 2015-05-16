class Api::CommentsController < ApplicationController
  def index
    def index
      @comments = Comment.all
      render json: @comments
    end

    def create
      Comment.create!(params.require(:comment).permit(:author, :text))
      @comments = Comment.all
      render json: @comments
    end
  end
end
