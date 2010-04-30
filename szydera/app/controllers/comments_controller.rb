class CommentsController < ApplicationController
  def create
    @joke = Joke.find(params[:joke_id])
    @comment = @joke.comments.create(params[:comment])
    redirect_to joke_path(@joke)
  end

  def destroy
    @joke = Joke.find(params[:joke_id])
    @comment = @joke.comments.find(params[:id])
    @comment.destroy
    redirect_to joke_path(@joke)
  end

end
