class CargosController < ApplicationController
  before_action :authenticate_employee!

  def index
    @cargos = Cargo.all.order("id ASC")

  end

  def show
    @cargo = Cargo.find(params[:id])
    @employee_comments = @cargo.employee_comments
  end

  def new
    @cargo = Cargo.new
  end

  def create
    @cargo = Cargo.create(cargo_params)
    @cargo.state = 0
    if @cargo.save
      redirect_to @cargo
    else
      render :new
    end
  end

  private

  def cargo_params
    params.require(:cargo).permit!
  end
end
