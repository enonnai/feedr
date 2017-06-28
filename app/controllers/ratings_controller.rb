class RatingsController < ApplicationController

  before_action :set_event

  def create
    @rating = @event.ratings.new :value => params[:value]
    if @rating.save
      redirect_to event_ratings_path(@event), :notice => "Rating successful."
    else
      redirect_to event_ratings_path(@event), :notice => "Something went wrong."
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute :value, params[:value]
  end

  private

  def set_event
    @event = Event.find(parms[:event_id])
  end

private

  def rating_params
    params.require(:rating).permit(:rating)
  end

end
