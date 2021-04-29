class WaybillsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @waybills = Waybill.all
  end

  def show
    @waybill = Waybill.find(params[:id])
    @employee_comments = @waybill.employee_comments
    @cargos = @waybill.cargos
  end

  def new
    @waybill = Waybill.new(employee_id: current_employee.id)
  end

  def create; end
end
