class MeditationsController < ApplicationController
   def index 
      meditations = Meditation.all
      render json: meditations # include [:ratings]
   end

   def show 
      meditation = Meditation.find_by_id(params[:id])
      render json: meditation #include [:ratings]
   end

end
