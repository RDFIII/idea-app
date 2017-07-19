class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(ideas_params)
    @idea.user_id = current_user.id
    @idea.save
    redirect_to @idea
  end


  def ideas_params
    params.require(:idea).permit(:title, :body)
  end

end
