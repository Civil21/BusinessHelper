class WaybillsController < ApplicationController
  before_action :authenticate_employee!, except: %i[show index]

  def index
    if params[:id]
      redirect_to waybill_path(params[:id])
    else
      authenticate_employee!
      @waybills = Waybill.all.order("id ASC")
    end
  end

  def show
    if @waybill = Waybill.find_by_id(params[:id])
      @employee_comments = @waybill.employee_comments
      @cargos = @waybill.cargos
    else
      flash_block('Вантажної накладної за вказаним номером не існує', 'warning')
      redirect_back(fallback_location: root_path)
    end
  end

  def new
    @waybill = Waybill.new(employee_id: current_employee.id)
  end

  def create
    @waybill = Waybill.new(waybill_params)
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
