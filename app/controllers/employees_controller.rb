class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def comment
    # буде зберігати коментарь працівника
  end
end
