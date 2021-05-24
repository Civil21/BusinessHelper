class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @employees = Employee.all.order("id ASC")
  end

  def show
    @employee = Employee.find(params[:id])
    @events = @employee.events
    @employee_comments = @employee.employee_comments
  end

  def comment
    @comment = EmployeeComment.new(employee_comment_params)
    @comment.employee = current_employee
    if @comment.save
      redirect_back(fallback_location: employees_path)
    else
      # помилка
      redirect_back(fallback_location: employees_path)
    end
  end

  private

  def employee_comment_params
    params.require(:employee_comment).permit(:text, :object_id, :object_type)
  end
end
