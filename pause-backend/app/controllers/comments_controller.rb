class CommentsController < ApplicationController
   def index
    comments = Comment.all
    render json: CommentSerializer.new(comment).to_serialized_json
  end

  def show
    comment = Comment.find_by_id(params[:id])
    render json: CommentSerializer.new(comment).to_serialized_json
  end

  def create
    meditation = Meditation.find_by_id(params[:meditation_id])
    comment = Comment.create(comment_params)
    render json: comment, include: [:meditation]
  end

  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    render json: comment, include: [:meditation]
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :meditation_id)
  end
end
