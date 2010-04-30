class CommentsController < ApplicationController
  def create
    @joke = Joke.find(params[:joke_id])
    @comment = @joke.comments.create(params[:comment])
    redirect_to joke_path(@joke)
  end
end
