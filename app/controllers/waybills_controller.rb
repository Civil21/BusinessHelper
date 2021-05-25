class WaybillsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @waybills = Waybill.all.order('id ASC')
  end

  def show
    @waybill = Waybill.find(params[:id])
    @employee_comments = @waybill.employee_comments
    @cargos = @waybill.cargos
  end

  def new
    @waybill = Waybill.new(employee_id: current_employee.id)
  end

  def create
    @waybill = employee.waybills.build(waybill_params)
    @waybill.state = 0
    if @waybill.save
      redirect_to @waybill
    else
      redirect_back(fallback_location: waybills_path)
    end
  end

  private

  def waybill_params
    params.require(:waybill).permit!
  end
end
