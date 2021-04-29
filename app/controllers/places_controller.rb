class PlacesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @employee_comments = @place.employee_comments
  end
end
