class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comments_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to "/"
  end

  def comments_params
    params.require(:comment).permit(:text, :commentable_type, :commentable_id)
  end

end
