class EventsController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      flash_message_good
      redirect_to '/events'
    else
      flash_message_fail
    end
  end

  def show
    redirect_to '/events/index'
  end

  private

  def event_params
    params.require(:event).permit(:title, :info, :date_time, :end_date_time, :nr_guests)
  end

  def flash_message_good
    flash[:notice] = 'Your event has been added'
  end

  def flash_message_fail
    flash[:notice] = 'Please fill in all fields'
  end
end
