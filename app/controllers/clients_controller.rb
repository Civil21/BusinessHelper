class ClientsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @clients = Client.all.order('id ASC')
  end

  def show
    @client = Client.find(params[:id])
    @waybills = @client.waybills
    @employee_comments = @client.employee_comments
  end
end
