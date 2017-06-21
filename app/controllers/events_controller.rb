class EventsController < ApplicationController

  def index

  end

  def new
    @event = Event.new
    redirect_to '/events/index'
  end

  def create

  end

  def show
    redirect_to '/events/index'
  end

end
