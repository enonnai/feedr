class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.save
    flash_message
    redirect_to '/events'
  end

  def show
    # redirect_to '/events/index'
  end

  private

  def event_params
    params.require(:event).permit(:title, :info, :date_time, :nr_guests)
  end

  def flash_message
    flash[:notice] = 'Your event has been added'
  end

end
