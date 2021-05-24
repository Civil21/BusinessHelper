class EventsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @events = Event.all.order("id ASC")
  end

  def show
    @event = Event.find(params[:id])
    @employee_comments = @event.employee_comments
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit!
  end
end
