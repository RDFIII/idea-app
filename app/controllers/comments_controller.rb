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
    if @comment.commentable_type == "Comment"
      redirect_to "/ideas/#{params[:comment][:parent_id]}##{@comment.id}"
    elsif @comment.commentable_type == "Idea"
      redirect_to "/ideas/#{@comment.commentable_id}##{@comment.id}"
    end
  end

  def comments_params
    params.require(:comment).permit(:text, :commentable_type, :commentable_id)
  end


end
