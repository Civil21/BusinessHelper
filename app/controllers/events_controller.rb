class EventsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @employee_comments = @event.employee_comments
  end
end
