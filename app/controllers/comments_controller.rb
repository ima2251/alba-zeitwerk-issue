class CommentsController < ApplicationController
  def index
    comments = Comment.all

    render :json => CommentResource.new(comments).serialize()
  end
end
