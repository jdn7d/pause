class CommentController < ApplicationController
   def index
    comments = Comment.all
    render json: comments, include: [:meditation]
  end

  def show
    comment = Comment.find_by_id(params[:id])
    if !comment
      render json: { error: "No comment by that ID", status: 400 }, status: 400
    else
      render json: comment, include: [:meditation]
    end
  end

  def create
    meditation = Meditation.find_by_id(params[:meditation_id])
    comment = Comment.create(comment: comment, meditation: meditation)
    if meditation.comment
      comment = Comment.create(comment: comment, meditation: meditation)
      render json: comment, include: [:meditation]
    else 
      render json: { error: "This meditation has no comments."}
    end
  end

  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    render json: comment, include: [:meditation]
  end
end
