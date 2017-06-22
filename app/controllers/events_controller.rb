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
    @event.save
    flash_message
    redirect_to '/events'
  end

  def show
    find_event
  end

  def info
  end 

  private

    def event_params
      params.require(:event).permit(:title, :info, :date_time, :nr_guests)
    end

    def flash_message
      flash[:notice] = 'Your event has been added'
    end

    def find_event
      @event = Event.find(params[:id])
    end

end
