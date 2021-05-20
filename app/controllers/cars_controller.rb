class CarsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @employee_comments = @car.employee_comments
    @events = @car.events
  end
end
