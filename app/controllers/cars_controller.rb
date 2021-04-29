class CarsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
end
