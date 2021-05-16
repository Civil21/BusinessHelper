class WaybillsController < ApplicationController
  before_action :authenticate_employee!, except: %i[show index]

  def index
    if params[:id]
      redirect_to waybill_path(params[:id])
    else
      authenticate_employee!
      @waybills = Waybill.all
    end
  end

  def show
    if @waybill = Waybill.find_by_id(params[:id])
      @employee_comments = @waybill.employee_comments
      @cargos = @waybill.cargos
    else
      flash_block('Неправильний номер накладної', 'warning')
      redirect_back(fallback_location: root_path)
    end
  end

  def new
    @waybill = Waybill.new(employee_id: current_employee.id)
  end

  def create
    @waybill = Waybill.create(waybill_params)
    redirect_to @waybill
  end

  private

  def waybill_params
    params.require(:waybill).permit!
  end
end
