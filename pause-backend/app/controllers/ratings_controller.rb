class RatingsController < ApplicationController
   def index
    ratings = Rating.all
    render json: ratings, include: [:meditation]
  end

  def show
    rating = Rating.find_by_id(params[:id])
    if !rating
      render json: { error: "No rating by that ID", status: 400 }, status: 400
    else
      render json: rating, include: [:meditation]
    end
  end

  def create
    meditation = Mditation.find_by_id(params[:meditation_id])
    rating = Rating.create(rating: rating, meditation: meditation)
    if meditation.rating do 
      rating = Rating.create(rating: rating, meditation: meditation)
      render json: rating, include: [:meditation]
    else 
      render json: { error: "This meditation has no ratings."}
    end
  end

  def destroy
    rating = Rating.find_by_id(params[:id])
    rating.destroy
    render json: rating, include: [:meditation]
  end
end