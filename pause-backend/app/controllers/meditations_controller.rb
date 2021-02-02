class MeditationsController < ApplicationController
   def index 
      meditations = Meditation.all
      render json: meditations # include [:comments]
   end

   def show 
      meditation = Meditation.find_by_id(params[:id])
      render json: meditation #include [:comments]
   end

end
