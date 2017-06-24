class LikesController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :find_likeable
before_action :authenticate_user!

  def create
   @likeable.liked_by current_user
   render json: {likes: @likeable.get_likes.count, places_left: @likeable.nr_guests - @likeable.get_likes.count, full_house: @likeable.nr_guests - @likeable.get_likes.count == 0}
 end

 private

 def find_likeable
   @likeable_type = params[:likeable_type].classify
   @likeable = @likeable_type.constantize.find(params[:likeable_id])
 end

end
